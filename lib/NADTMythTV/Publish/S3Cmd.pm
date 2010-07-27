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
  my $convertpath = file( $convert->destdir, $convert->destfile );
  my( $ext ) = ( $convertpath =~ m/\.(.+)$/ );
  my $destname = "$fulltitle - $starttime.$ext";
  my $s3dest = "s3://$bucketname/$destname";
  my $command = $cfg->{publish}->{dests}->{$dest->dest}->{putcmd};
  $command =~ s/%%FILE%%/$convertpath/;
  $command =~ s/%%DEST%%/$s3dest/;
  $log->info("uploading $convertpath as $s3dest");
  $log->debug("running $command");
  if( system("$command") ) {
    $log->logdie("can't run $command");
  }
  
  # insert the s3 url into the database
  my $uri = "http://s3.amazonaws.com/$bucketname/" . uri_escape($destname);
  $dest->create_related( s3 => { objkey => $destname, url => $s3dest, public_url => $uri } );

}

sub purge
{

  my $self = shift;
  my $dest = shift;
  
  my $s3 = $dest->s3;
  
  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;
  
  # use s3cmd to remove the file
  my $s3url = $s3->url;
  my $command = $cfg->{publish}->{dests}->{$dest->dest}->{delcmd};
  $command =~ s/%%URL%%/$s3url/;
  $log->info("removing $s3url");
  $log->debug("running $command");
  if( system("$command") ) {
    $log->logdie("can't run $command");
  }

}

# keep require happy
1;

#
# EOF
