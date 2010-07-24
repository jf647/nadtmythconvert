#
# $Id$ $Date$
#

package NADTMythTV::Util;

use strict;
use warnings;

use NADTMythTV;
use File::Temp      qw|tempfile tempdir|;
use IPC::Run        qw|run|;
use Path::Class     qw|dir file|;

sub getfileinfo
{

  my $class = shift;
  my $file = shift;
  my $hasvideo = shift;
  my $hasaudio = shift;

  # use ffmpeg to get stream info
  # Input #0, mpeg, from '/srv/mythtv/tmp/9kamu2rDy9.mpg':
  #   Duration: 00:26:28.05, start: 0.200000, bitrate: 2802 kb/s
  #   Stream #0.0[0x1e0]: Video: mpeg2video, yuv420p, 704x576 [PAR 16:11 DAR 16:9], 2732 kb/s, 25 tbr, 90k tbn, 50 tbc
  #   Stream #0.1[0x1c0]: Audio: mp2, 48000 Hz, 1 channels, s16, 64 kb/s
  #   Stream #0.2[0x1c1]: Audio: mp2, 48000 Hz, 2 channels, s16, 192 kb/s
  # Output #0, mpeg2video, to 'foo.mpeg':
  #   Stream #0.0: Video: mpeg2video, yuv420p, 704x576 [PAR 16:11 DAR 16:9], q=2-31, 200 kb/s, 90k tbn, 25 tbc

  my $cfg = NADTMythTV->cfg;
  my $log = NADTMythTV->log;

  my($tempfh, $tempfile) = tempfile( DIR => $cfg->{directories}->{temp}, UNLINK => 1, SUFFIX => '.getstreaminfo.mpg' );
  my @command = (
    $cfg->{commands}->{ffmpeg},
    '-i', $file,
    '-t', 5,
    '-y',
  );
  if( $hasvideo && $hasaudio ) {
    push @command,
    '-vcodec', 'copy',
    '-acodec', 'copy';
  }
  elsif( $hasvideo ) {
    push @command,
    '-vcodec', 'copy',
    '-an';
  }
  elsif( $hasaudio ) {
    push @command,
    '-acodec', 'copy',
    '-vn';
  }
  else {
    $log->logdie("neither audio nor video enabled in getfileinfo");
  }
  push @command, $tempfile;

  my $output;
  $log->debug("running command @command");
  unless( run \@command, '>&', \$output ) {
    $log->logdie("cannot run ffmpeg: $output");
  }
  my @output = split( /\n/, $output );
  my $info = {};
  
  # loop over output lines
  # states: 0 = looking for "Input #0"
  #         1 - looking for duration or stream header
  #         2 - reading stream info
  #         3 - found "Output #0"
  my $state = 0;
  my $line = shift @output;
  while( 3 != $state ) {
    if( $line =~ m/^Output #0/ ) {
        $log->debug("found output header, changing to state 3");
        $log->debug($line);
        $state = 3;
    }
    if( 0 == $state ) {
      if( $line =~ m/^Input #0.+$file/ ) {
        $log->debug("found input header, changing to state 1");
        $log->debug($line);
        $state = 1;
      }
      $line = shift @output;
    }
    elsif( 1 == $state ) {
      if( $line =~ m/Duration:\s+(\d+):(\d+):(\d+)(\.\d+),/ ) {
        $log->debug("found duration");
        $log->debug($line);
        $info->{duration} = $1 * 3600 + $2 * 60 + $3 + $4;
        $line = shift @output;
      }
      elsif( $line =~ m/Duration: N\/A/ ) {
        $log->error("found N/A duration");
        $log->debug($line);
        $line = shift @output;
      }
      elsif( $line =~ m/Stream/ ) {
        $log->debug("found start of streams, changing to state 2");
        $state = 2;
      }
      else {
        $line = shift @output;
      }
    }
    elsif( 2 == $state ) {
      if( $line =~ m/Stream.+Video/ ) {
        # Stream #0.0[0x1e0]: Video: mpeg2video, yuv420p, 704x576 [PAR 16:11 DAR 16:9], 2732 kb/s, 25 tbr, 90k tbn, 50 tbc
        # Stream #0.0: Video: h264, yuv420p, 720x576, PAR 64:45 DAR 16:9, 25 tbr, 25 tbn, 50 tbc
        if( $line =~ m/Stream\s+#(\d+\.\d+).+\s+(\d+)x(\d+)+.+PAR\s+(\d+:\d+).+DAR\s+(\d+:\d+)/ ) {
          $log->debug("found video stream");
          $log->debug($line);
          my $vstream = { index => $1 };
          $vstream->{width} = $2;
          $vstream->{height} = $3;
          $vstream->{aspect_ratio} = {
            par => $4,
            dar => $5,
            calc => sprintf('%0.3f', $vstream->{width} / $vstream->{height}),
          };
          $info->{video} = $vstream;
        }
        else {
          $log->logdie("malformed video stream line: $line");
        }
      }
      elsif( $line =~ m/Stream.+Audio/ ) {
        # Stream #0.1[0x1c0]: Audio: mp2, 48000 Hz, 1 channels, s16, 64 kb/s
        if( $line =~ m/Stream\s+#(\d+\.\d+).+\s+(\d+)\s+Hz.+\s+(\d+)\s+channels.+\s+(\d+)\s+kb\/s/ ) {
          $log->debug("found audio stream");
          $log->debug($line);
          my $astream = { index => $1 };
          $astream->{samplerate} = $2;
          $astream->{channels} = $3;
          $astream->{bitrate} = $4;
          push @{ $info->{audio} }, $astream;
        }
        # Stream #0.1(und): Audio: aac, 48000 Hz, 2 channels, s16
        elsif( $line =~ m/Stream\s+#(\d+\.\d+).+\s+(\d+)\s+Hz.+\s+(\d+)\s+channels/ ) {
          $log->debug("found audio stream");
          $log->debug($line);
          my $astream = { index => $1 };
          $astream->{samplerate} = $2;
          $astream->{channels} = $3;
          push @{ $info->{audio} }, $astream;
        }
        # Stream #0.2[0x194](eng): Audio: mp3, 0 channels, s16
        elsif( $line =~ m/Stream\s+#(\d+\.\d+).+\s+(\d+)\s+channels/ ) {
          $log->debug("found audio stream");
          $log->debug($line);
          my $astream = { index => $1 };
          $astream->{samplerate} = 0;
          $astream->{channels} = 0;
          push @{ $info->{audio} }, $astream;
        }
        else {
          $log->logdie("malformed audio stream line: $line");
        }
      }
      $line = shift @output;
    }
  }
  
  $info->{hasvideo} = exists $info->{video} ? 1 : 0;
  $info->{hasaudio} = exists $info->{audio} ? 1 : 0;
  if( $info->{hasaudio} ) {
    $info->{astreams} = scalar @{ $info->{audio} };
  }
  
  unlink($tempfile);
  
  return $info;

}

sub expandmeta
{

  my $class = shift;
  my $format = shift;
  my $meta = shift;

  my $ret = $format;
  
  $ret =~ s/%%TITLE%%/$meta->{title}/g;
  $ret =~ s/%%ARTIST%%/$meta->{artist}/g;
  $ret =~ s/%%ALBUM%%/$meta->{album}/g;
  $ret =~ s/%%GENRE%%/$meta->{genre}/g;
  $ret =~ s/%%DATE%%/$meta->{date}/g;
  $ret =~ s/%%STARTTIME%%/$meta->{starttime}/g;
  $ret =~ s/%%CHANNELNAME%%/$meta->{channelname}/g;
  $ret =~ s/%%CALLSIGN%%/$meta->{callsign}/g;
  
  return file( $ret );

}

sub recordingpath
{

  my $class = shift;
  my $what = shift;

  my $mythdb = NADTMythTV->mythdb;

  my $recording;
  if( ref $what eq 'NADTMythTV::DB::Result::Recorded' ) {
    $recording = $what;
  }
  else {
    my $mythdb = NADTMythTV->mythdb;
    my $recorded_rs = $mythdb->resultset('Recorded');
    $recording = $recorded_rs->single( $what );
    return undef unless( $recording );
  }
  my $storagegroup_rs = $mythdb->resultset('Storagegroup');
  my $storagegroup = $storagegroup_rs->single( {
    groupname => $recording->storagegroup,
    hostname  => $recording->hostname,
  } );
  return undef unless( $storagegroup );
  return {
    dir => dir( $storagegroup->dirname ),
    file => file( $recording->basename ),
    path => file( $storagegroup->dirname, $recording->basename ),
  }

}

# keep require happy
1;

#
# EOF
