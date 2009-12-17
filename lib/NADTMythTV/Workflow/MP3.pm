#
# $Id$
#

package NADTMythTV::Workflow::MP3;
use base NADTMythTV::Workflow::Audio;
use Class::C3;

use strict;
use warnings;

sub new
{

  my $class = shift;
  
  my $self = bless {}, $class;
  $self->format( 'MP3' );
  $self->init(@_);

  return $self;

}

# keep require happy
1;

#
# EOF
