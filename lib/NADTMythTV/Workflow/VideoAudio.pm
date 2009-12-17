#
# $Id$
#

package NADTMythTV::Workflow::VideoAudio;
use base NADTMythTV::Workflow;
use Class::C3;

use strict;
use warnings;

use IPC::Run 'run';
use File::Temp qw|tempfile tempdir|;
use Path::Class qw|dir file|;
use File::Copy;

sub getmpeginfo
{

  my $self = shift;
  my $file = shift;

  return NADTMythTV::Util->getfileinfo( $file, 1, 1 );

}

# keep require happy
1;

#
# EOF
