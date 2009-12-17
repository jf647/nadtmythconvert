#
# $Id$
#

package NADTMythTV::Workflow::Audio;
use base NADTMythTV::Workflow;
use Class::C3;

use strict;
use warnings;

use IPC::Run    'run';
use File::Copy;
use File::Temp  qw|tempdir tempfile|;
use Path::Class qw|file dir|;

sub getmpeginfo
{

  my $self = shift;
  my $file = shift;

  return NADTMythTV::Util->getfileinfo( $file, 0, 1 );

}

sub analyzestreams
{

  my $self = shift;
  
  my $log = NADTMythTV->log;
  
  # decide what is the best audio stream
  my $best;
  for my $astream( @{ $self->recording->{fileinfo}->{audio} } ) {
    $best = $astream unless( $best );
    if( $astream->{channels} > $best->{channels} ) {
      $best = $astream;
    }
    elsif( $astream->{channels} == $best->{channels} ) {
      if( $astream->{bitrate} > $best->{bitrate}  ) {
        $best = $astream;
      }
      elsif( $astream->{bitrate} == $best->{bitrate} ) {
        if( $astream->{samplerate} > $best->{samplerate} ) {
          $best = $astream;
        }
      }
    }
  }
  $self->recording->{fileinfo}->{bestaudio} = $best;
  
  $self->next::method(@_);
  
}

# keep require happy
1;

#
# EOF