#
# $Id$
#

package NADTMythTV::Command::FFmpeg;
use base NADTMythTV::Command;
use Class::C3;

use strict;
use warnings;

use NADTMythTV;
use IPC::Run 'run';

sub init
{

  my $self = shift;
  my %params = @_;
  
  my $cfg = NADTMythTV->cfg;
  $self->program( $cfg->{commands}->{ffmpeg} );
  
  $self->next::method(@_);

}

sub setup_args
{

  my $self = shift;
  my $wf = shift;
  
  my $cfg = NADTMythTV->cfg;
  
  push @{ $self->args },
    '-y',
    '-i', $wf->recording->{path},
    '-acodec', $cfg->{output}->{$wf->format}->{acodec},
    '-ac', 2,
    '-ab', $cfg->{output}->{$wf->format}->{abitrate},
    '-ar', $wf->recording->{fileinfo}->{bestaudio}->{samplerate},
    '-f', $cfg->{output}->{$wf->format}->{container},
    '-map', $wf->recording->{fileinfo}->{bestaudio}->{index},
    $wf->tempdest->{path};

}

sub post
{

  my $self = shift;
  my $wf = shift;
  
  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;
  
  $log->info("adding MP3 tags");
  
  # add metadata to the MP3
  $log->info("adding MP3 tags");
  my @command = (
    $cfg->{commands}->{id3},
    '-a', $wf->meta->{artist},
    '-t', $wf->meta->{title},
    '-A', $wf->meta->{album},
    '-c', $wf->meta->{comments},
    '-y', $wf->meta->{time}->{year},
    $wf->tempdest->{path},
  );
  my $output;
  $log->debug("running command: @command");
  unless( run \@command, '>&', \$output ) {
    $log->logdie("can't apply metadata to " . $wf->tempdest->{path} . ": $output");
  }
  
  $self->next::method($wf);

}

# keep require happy
1;


#
# EOF
