#
# $Id$
#

package NADTMythTV::Publish;

use strict;
use warnings;

sub new
{

  my $class = shift;
  my $opts = shift;
  return bless { }, $class;

}

# keep require happy
1;

#
# EOF