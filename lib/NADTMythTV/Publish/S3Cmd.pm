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
use File::Temp 'tmpfile';
use IO::File;

use NADTMythTV;
use NADTMythTV::Util;

sub new
{

  my $class = shift;
  my $opts = shift;
  my $self = $class->SUPER::new( $opts );
  if( $opts->{throttle} ) {
    $self->{throttle} = $opts->{limit};
  }
  
  return $self;

}

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
  my $bucketname = $cfg->{publish}->{dests}->{s3cmd}->{bucket};
  my $convertpath = file( $convert->destdir, $convert->destfile );
  my( $ext ) = ( $convertpath =~ m/\.(.+)$/ );
  my $destname = "$fulltitle - $starttime.$ext";
  my $s3dest = "s3://$bucketname/$destname";
  my $command = $cfg->{publish}->{dests}->{s3cmd}->{putcmd};
  $command =~ s/%%FILE%%/$convertpath/;
  $command =~ s/%%DEST%%/$s3dest/;
  if( $self->{throttle} ) {
    $command =~ s/%%THROTTLE%%/$cfg->{publish}->{dests}->{s3cmd}->{throttlecmd}/;
    $command =~ s/%%LIMIT%%/$self->{throttle}/;
  }
  else {
    $command =~ s/%%THROTTLE%%//;
  }
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
  my $command = $cfg->{publish}->{dests}->{s3cmd}->{delcmd};
  $command =~ s/%%URL%%/$s3url/;
  $log->info("removing $s3url");
  $log->debug("running $command");
  if( system("$command") ) {
    $log->logdie("can't run $command");
  }

}

sub published_urls
{

  my $self = shift;

  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;
  
  # use s3cmd to list bucket contents
  my(undef, $tempfname) = tempfile( SUFFIX => '.txt', UNLINK => 1 );
  my $command = $cfg->{publish}->{dests}->{s3cmd}->{lscmd};
  my $url = "s3://$cfg->{publish}->{dests}->{s3cmd}->{bucket}";
  $command =~ s/%%URL%%/$url/;
  $command =~ s/%%TEMPFILE%%/$tempfname/;
  $log->info("enumerating bucket $cfg->{publish}->{dests}->{s3cmd}->{bucket}");
  $log->debug("running $command");
  if( system("$command") ) {
    $log->logdie("can't run $command");
  }
  
  # read the output file
  my $fh = IO::File->new( $tempfname )
    or $log->logdie("can't open $tempfname for read: $!");
  my @urls;
  while( my $line = $fh->getline ) {
    chomp $line;
    my(undef, undef, $url) = split(/\s+/, $line);
    push @urls, $url;
  }
  
  return \@urls;

}

sub db_urls
{

  my $self = shift;
  
  my $nadtmyth = NADTMythTV->new;
  my $mythdb = $nadtmyth->mythdb;
  my $rs = $mythdb->resultset('NadtmythPublishS3');
  my $it = $rs->search;
  my @urls;
  while( my $known = $it->next ) {
    push @urls, $known->url;
  }
  
  return \@urls;

}

# keep require happy
1;

#
# EOF
