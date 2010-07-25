#
# $Id$
#

package NADTMythTV::Workflow;
use base Class::Accessor;
use Class::C3;

use strict;
use warnings;

NADTMythTV::Workflow->mk_accessors( qw|
  cmd
  format
  jobqueue_type
  search_param
  jobid
  date
  replace
  recording
  dest
  tempdest
  meta
  job
|);

use File::pushd;
use Path::Class     qw|dir file|;
use IPC::Run        qw|run|;
use NADTMythTV;
use NADTMythTV::Util;

sub init
{

  my $self = shift;
  my %params = @_;

  my $cfg = NADTMythTV->cfg;
  
  my $cmdclass = 'NADTMythTV::Command::' . $cfg->{output}->{$self->format}->{command};
  eval "require $cmdclass";
  if( $@ ) {
    my $e = $@;
    my $log = NADTMythTV->log;
    $log->logdie("can't load command class $cmdclass: $e");
  }

  Class::C3::initialize();
  
  $self->jobqueue_type( $cfg->{output}->{$self->format}->{jobqueue_type} );
  $self->search_param( $params{search_param} );
  $self->jobid( $params{jobid} );
  $self->date( $params{date} );
  $self->replace( $params{replace} );
  $self->cmd( $cmdclass->new );
  $self->recording( {} );
  $self->dest( {} );
  $self->tempdest( {} );
  $self->job( {} );

}

sub process
{

  my $self = shift;
  
  my $cfg = NADTMythTV->cfg;
  my $log = NADTMythTV->log;
  
  $self->getrecordingdb
    or $log->logdie("can't find recording in database");
  $self->getrecordingdisk
    or $log->logdie("can't find recording on disk");
  $self->checkreplace;
  $self->checkjobqueue;
  $self->getorigfileinfo;
  $self->analyzestreams;
  $self->selectdest;
  $self->fetchmeta;
  my $converter = $cfg->{output}->{$self->format}->{command};
  $self->statusupdate("converting using $converter");
  $log->info("converting recording using $converter");
  $self->convert;
  $self->statusupdate('completed conversion');
  $log->info("completed conversion");
  $self->renametofinal;
  $self->statusupdate('renamed converted file to final destination');
  $self->statusupdate('created symlinks to original program');
  $self->makeconvertedlinks;
  $self->statusupdate('created links to destination file');
  $self->statusupdate('complete');

}

sub getrecordingdb
{

  my $self = shift;
  
  my $log = NADTMythTV->log;
  
  # get the recording from the database
  my $mythdb = NADTMythTV->mythdb;
  my $rs = $mythdb->resultset('Recorded');
  my $obj = $rs->single( $self->search_param );
  return undef unless( $obj );
  
  # format the title
  if( $obj->subtitle ) {
    $log->info('found recording: ' . join(' - ', $obj->title, $obj->subtitle));
  }
  else {
    $log->info('found recording: ' . $obj->title);
  }

  $self->recording( NADTMythTV::Util->recordingpath( $self->search_param ) );
  $self->recording->{dbobj} = $obj;

}

sub getrecordingdisk
{

  my $self = shift;
  
  my $log = NADTMythTV->log;

  # check that the recording exists on disk
  unless( -f $self->recording->{path} ) {
    $log->logdie("recording file " . $self->recording->{path} . " does not exist");
  }

}

sub renametofinal
{

  my $self = shift;
  
  my $log = NADTMythTV->log;
  my $mythdb = NADTMythTV->mythdb;

  my $final = file( $self->dest->{path} );
  
  $log->debug("renaming " . $self->tempdest->{path} . " to $final");
  unless( rename $self->tempdest->{path}, $self->dest->{path} ) {
    $log->logdie("can't rename " . $self->tempdest->{path} . " to " . $self->dest->{path} . ": $!");
  }
  $log->info("moved converted recording to $final");
  
  unless( chmod( 0640, $final ) ) {
    $log->logdie("can't chmod $final to 0640: $!");
  }

  my $rs = $mythdb->resultset('NadtmythConverted');

  $rs->create( {
    chanid => $self->recording->{dbobj}->chanid,
    starttime => $self->recording->{dbobj}->starttime,
    basename => $self->recording->{dbobj}->basename,
    storagegroup => $self->recording->{dbobj}->storagegroup,
    destformat => $self->format,
    destdir => $final->dir,
    destfile => $final->basename,
    destsize => file( $final->dir, $final->basename )->stat->size,
    convertdate => \'NOW()',
  } );

}

sub fetchmeta
{

  my $self = shift;
  
  my $log = NADTMythTV->log;
  my $mythdb = NADTMythTV->mythdb;

  my $meta = {
    artist => $self->recording->{dbobj}->title,
    album => $self->recording->{dbobj}->title,
    publisher => 'NADT MythTV',
    genre => $self->recording->{dbobj}->category,
    comments => $self->recording->{dbobj}->description,
    titleonly => $self->recording->{dbobj}->title,
  };
  if( $self->recording->{dbobj}->subtitle ) {
    $meta->{title} = $self->recording->{dbobj}->title . ' - ' . $self->recording->{dbobj}->subtitle;
  }
  else {
    $meta->{title} = $self->recording->{dbobj}->title;
  }
  
  # re-format the starttime
  unless( $self->recording->{dbobj}->starttime =~ m/^(\d{4})-(\d{2})-(\d{2})\s(\d{2}):(\d{2}):(\d{2})/ ) {
    $log->logdie("unable to parse starttime $meta->{starttime}");
  }
  my($year, $month, $day, $hour, $min) = ( $1, $2, $3, $4, $5 );
  $meta->{starttime} = $meta->{date} = "$year-$month-$day $hour-$min";
  $meta->{time} = {
    year    => $year,
    month   => $month,
    day     => $day,
    hour    => $hour,
    min     => $min,
  };
  
  # get information about the channel
  my $chan_rs = $mythdb->resultset('Channel');
  my $channel = $chan_rs->single( {
    chanid => $self->recording->{dbobj}->chanid,
  } );
  unless( $channel ) {
    $log->logdie("cannot get channel information for chanid " . $self->recording->{dbobj}->chanid);
  }
  $meta->{channelname} = $channel->name;
  $meta->{callsign} = $channel->callsign;
  
  # cleanse double quotes and slashes
  for my $key( keys %$meta ) {
    $meta->{$key} =~ s/["?:*]//g;
    $meta->{$key} =~ s|/| of |g;
  }
  
  $self->meta( $meta );

}

sub makelinks
{

  my $self = shift;
  my $source = shift;
  my $links = shift;
  my $format = shift;
  
  my $log = NADTMythTV->log;
  my $mythdb = NADTMythTV->mythdb;

  my $rs = $mythdb->resultset('NadtmythLinked');
  
  for my $link( @$links ) {
    my $ok = 0;
    $log->debug("checking link $link (should point to $source)");
    if( -l $link ) {
      if( file($link)->resolve->absolute eq file($source)->resolve->absolute ) {
        $ok = 1;
      }
      else {
        $log->warn("link exists but points to wrong source!");
        unless( unlink( $link ) ) {
          $log->logdie("cannot remove broken link $link: $!");
        }
      }
    }
    unless( $ok ) {
      unless( symlink( $source, $link ) ) {
        $log->logdie("cannot create symlink from $source to $link: $!");
      }
      $log->info("created symlink $link");
      $rs->create( {
        chanid => $self->recording->{dbobj}->chanid,
        starttime => $self->recording->{dbobj}->starttime,
        basename => $self->recording->{dbobj}->basename,
        storagegroup => $self->recording->{dbobj}->storagegroup,
        linkformat => $format,
        linkdir => $link->dir,
        linkfile => $link->basename,
        linkdate => \'NOW()',
      } );
    }
  }

}

sub checkreplace
{

  my $self = shift;

  my $log = NADTMythTV->log;
  my $mythdb = NADTMythTV->mythdb;
  
  # check if we've already done a conversion for this format
  $log->debug("checking if we've done this conversion already");
  my $rs = $mythdb->resultset('NadtmythConverted');
  my $converted = $rs->single( {
    chanid => $self->recording->{dbobj}->chanid,
    starttime => $self->recording->{dbobj}->starttime,
    destformat => $self->format,
  } );

  # if we find it in the database, check on disk
  if( $converted ) {
    $log->debug("conversion to " . $self->format . " already in DB, checking for file");
    my $convertedfile = file( $converted->destdir, $converted->destfile );
    # if it's on disk, check if we've been given --replace
    if( -f $convertedfile ) {
      if( $self->replace ) {
        $log->info("conversion to " . $self->format . " exists --replace specified; deleting $convertedfile");
        unless( unlink( $convertedfile ) ) {
          $log->logdie("can't remove file $convertedfile: $!");
        }
        $converted->delete;
        $rs = $mythdb->resultset('NadtmythLinked');
        my $links = $rs->search( {
          chanid => $self->recording->{dbobj}->chanid,
          starttime => $self->recording->{dbobj}->starttime,
          linkformat => $self->format,
        } );
        while( my $link = $links->next ) {
          my $linkfile = file( $link->linkdir, $link->linkfile );
          $log->info("removing link $linkfile");
          if( -f $linkfile ) {
            unless( unlink $linkfile ) {
              $log->logdie("can't remove link $linkfile: $!");
            }
            $log->info("conversion to " . $self->format . " exists --replace specified; deleting link $linkfile");
          }
        }
        $links->delete_all;
      }
      else {
        $log->logdie("conversion to " . $self->format . " exists and --replace not specified; aborting");
      }
    }
    else{
      $log->info("conversion to " . $self->format . " in database but not on disk; removing converted record");
      $converted->delete;
    }
  }
}

sub checkjobqueue
{

  my $self = shift;
  
  my $log = NADTMythTV->log;
  my $mythdb_ac = NADTMythTV->mythdb_ac;
  
  my $rs = $mythdb_ac->resultset('Jobqueue');
  my $job = $rs->single( {
    id => $self->jobid,
  } );
  if( $job ) {
    $log->info("found jobqueue entry with id " . $job->id . ", will update status");
    $self->job->{dbobj} = $job;
  }

}

sub statusupdate
{

  my $self = shift;
  my $status = shift;
  
  if( $self->job->{dbobj} ) {
    my $log = NADTMythTV->log;
    $log->debug("updating job status to '$status'");
    $self->job->{dbobj}->comment($status);
    $self->job->{dbobj}->statustime( \'now()' );
    $self->job->{dbobj}->update;
  }

}

sub getorigfileinfo
{

  my $self = shift;
  
  $self->recording->{fileinfo} = $self->getmpeginfo( $self->recording->{path} );

}

sub selectdest
{

  my $self = shift;
  
  my $cfg = NADTMythTV->cfg;
  
  my $destfile = $self->recording->{path}->basename;
  $destfile =~ s/\..+$//;
  
  $self->dest->{path} = file( $cfg->{output}->{$self->format}->{dir}, join('.', $destfile, $cfg->{output}->{$self->format}->{container}) );
  $self->dest->{dir} = $self->dest->{path}->parent;
  $self->dest->{file} = $self->dest->{path}->basename;
  $self->dest->{base} = $destfile;
  
  $self->tempdest->{path} = file( $cfg->{directories}->{temp}, join('.', $destfile, 'convert', $self->format, $cfg->{output}->{$self->format}->{container}) );
  $self->tempdest->{dir} = $self->tempdest->{path}->parent;
  $self->tempdest->{file} = $self->tempdest->{path}->basename;
  $self->tempdest->{base} = $destfile;
  
}

sub makeconvertedlinks
{

  my $self = shift;
  
  my $cfg = NADTMythTV->cfg;

  my @links;
  
  for my $linkspec( @{ $cfg->{output}->{$self->format}->{links} } ) {
    push @links, NADTMythTV::Util->expandmeta( $linkspec, $self->meta );
  }
  
  $self->makelinks( $self->dest->{path}, \@links, $self->format );

}

sub convert
{

  my $self = shift;

  $self->cmd->setup_args( $self );
  $self->cmd->execute($self);

}

sub analyzestreams
{

  # no-op

}

# keep require happy
1;

#
# EOF
