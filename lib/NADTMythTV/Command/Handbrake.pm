#
# $Id$
#

package NADTMythTV::Command::Handbrake;
use base NADTMythTV::Command;
use Class::C3;

use strict;
use warnings;

use NADTMythTV;
use Path::Class qw|dir file|;
use IPC::Run 'run';
use File::Temp qw|tempfile|;

sub init
{

  my $self = shift;
  my %params = @_;
  
  my $cfg = NADTMythTV->cfg;
  $self->program( $cfg->{commands}->{handbrake} );
  
  $self->next::method(@_);

}

sub setup_args
{

  my $self = shift;
  my $wf = shift;
  
  my $cfg = NADTMythTV->cfg;
  
  push @{ $self->args },
    '-C', 1,
    '-i', $wf->recording->{path},
    '-o', $wf->tempdest->{path},
    '-s', 'scan',
    '-F', 'scan';
  if( exists $cfg->{output}->{$wf->format}->{hb_opts} ) {
    push @{ $self->args }, @{ $cfg->{output}->{$wf->format}->{hb_opts} };
  }
  if( exists $cfg->{output}->{$wf->format}->{hb_presets} ) {
    push @{ $self->args }, map { qq{--preset="$_"} } @{ $cfg->{output}->{$wf->format}->{hb_presets} };
  }

}

sub post
{

  my $self = shift;
  my $wf = shift;
  
  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;

  # extract a thumbnail of the video
  my(undef, $tnfname) = tempfile( DIR => $cfg->{directories}->{temp}, UNLINK => 1, SUFFIX => '.png' );
  my @command = (
    $cfg->{commands}->{ffmpeg},
    '-y',
    '-i', $wf->tempdest->{path},
    '-ss', 64,
    '-vframes', 1,
    '-s', '320x240',
    $tnfname,
  );
  my $output;
  $log->debug("running command: @command");
  unless( run \@command, '>&', \$output ) {
    $log->error("can't extract thumbnail: $output");
    undef $tnfname;
  }

  # add metadata to the video
  my $metatempdest = file( $self->tempdname->file( join('.', $wf->tempdest->{base}, 'tag', $wf->format, $cfg->{output}->{$wf->format}->{container}) ) );
  $log->info("adding MP4 tags");
  @command = (
    $cfg->{commands}->{atomicparsley},
    $wf->tempdest->{path},
    '-o', $metatempdest,
    '--artist', $wf->meta->{artist},
    '--title', $wf->meta->{title},
    '--album', $wf->meta->{album},
    '--description', $wf->meta->{comments},
    '--comment', $wf->meta->{comments},
    '--year', $wf->meta->{time}->{year},
    '--category', $wf->meta->{genre},
    '--genre', $wf->meta->{genre},
    '--TVNetwork', $wf->meta->{channelname},
    '--TVShowName', $wf->meta->{titleonly},
    '--encodingTool', 'NADT MythTV Converter',
  );
  if( $tnfname ) {
    push @command, '--artwork', $tnfname;
  }
  undef $output;
  $log->debug("running command: @command");
  unless( run \@command, '>&', \$output ) {
    $log->logdie("can't apply metadata to " . $wf->tempdest->{path} . ": $output");
  }
  $log->debug("renaming $metatempdest to " . $wf->tempdest->{path});
  unless( rename( $metatempdest, $wf->tempdest->{path} ) ) {
    $log->logdie("can't rename $metatempdest to $wf->tempdest->{path}: $!");
  }

  $self->next::method($wf);

}

# keep require happy
1;

#
# EOF
