#
# $Id$
#

package NADTMythTV::Workflow::AppleTV;
use base NADTMythTV::Workflow::VideoAudio;
use Class::C3;

use strict;
use warnings;

sub new
{

  my $class = shift;
  
  my $self = bless {}, $class;
  $self->format( 'AppleTV' );
  $self->init(@_);

  return $self;

}

# keep require happy
1;

#
# EOF
