#
# $Id$
#

package NADTMythTV::Publish::S3;
use base 'NADTMythTV::Publish';

use strict;
use warnings;

use Net::Amazon::S3::Client;
use Net::Amazon::S3;
use Path::Class qw|dir file|;

use NADTMythTV;
use NADTMythTV::Util;

my $s3;
my $s3c;
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
  
  # set up S3 client
  unless( $s3 ) {
    $s3 = Net::Amazon::S3->new( {
      aws_access_key_id => $cfg->{publish}->{dests}->{$dest->dest}->{access_key},
      aws_secret_access_key => $cfg->{publish}->{dests}->{$dest->dest}->{secret_key},
      retry => 1,
    } ) or $log->logdie("can't connect to S3");
  }
  unless( $s3c ) {
    $s3c = Net::Amazon::S3::Client->new( s3 => $s3 );
  }
  
  # create the bucket if it doesn't exist
  my $bucketname = $cfg->{publish}->{dests}->{$dest->dest}->{bucket};
  my $bucketloc = $cfg->{publish}->{dests}->{$dest->dest}->{bucket_location};
  my @buckets = $s3c->buckets;
  my $bucket;
  if( grep { $_->name eq $bucketname } @buckets ) {
    $bucket = $s3c->bucket( name => $bucketname );
  }
  else {
    $bucket = $s3c->create_bucket( name => $bucketname, location_constraint => $bucketloc );
    $log->info("created bucket $bucketname");
  }
  
  # check if the file exists
  my $destname = "$fulltitle - $starttime";
  if( $bucket->exists( key => $destname ) ) {
    $log->logdie("key '$key' already exists in bucket");
  }

  # put the file in the bucket
  my $convertpath = file( $convert->destdir, $convert->destfile );
  my $s3obj = $bucket->object(
    key => $destname,
    acl_short => 'public-read',
    content_type => 'application/octet-stream',
  );
  $s3obj->put_filename( $convertpath );
  
  # insert the s3 url into the database
  $dest->create_related( s3 => { url => $s3obj->uri } );

}

# keep require happy
1;

#
# EOF
