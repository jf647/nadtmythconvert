#
# $Id$
#

package NADTMythTV::Publish::S3Cmd;
use base 'NADTMythTV::Publish';

use strict;
use warnings;

use Path::Class qw|dir file|;
use URI::Escape;
use Text::ParseWords;

use NADTMythTV;
use NADTMythTV::Util;

sub publish
{

  my $self = shift;
  my $dest = shift;

  my $convert = $dest->to_publish->converted;
  my $orig = $convert->recorded;

  my $fulltitle = NADTMythTV::Util->fulltitle( $orig );
  my $starttime = $orig->starttime;
  
  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;
  
  # use s3cmd to put the file in the bucket
  my $bucketname = $cfg->{publish}->{dests}->{$dest->dest}->{bucket};
  my $destname = "$fulltitle - $starttime";
  my $convertpath = file( $convert->destdir, $convert->destfile );
  my $s3dest = "s3://$bucketname/$destname";
  my $command = $cfg->{publish}->{dests}->{$dest->dest}->{putcmd};
  $command =~ s/%%FILE%%/$convertpath/;
  $command =~ s/%%DEST%%/$s3dest/;
  $log->info("uploading $convertpath as $s3dest");
  if( system("$command") ) {
    $log->logdie("can't run $command: $output");
  }
  
  # insert the s3 url into the database
  my $uri = "s3://$bucketname/" . uri_escape($destname);
  $dest->create_related( s3 => { objkey => $destname, url => $uri } );

}

# keep require happy
1;

#
# EOF
