#
# $Id$ $Date$
#

package NADTMythTV;

use strict;
use warnings;

use strict;
use warnings;

use Log::Log4perl;
use MythTV;
use NADTMythTV::DB::MythTV;
use NADTMythTV::DB::NADT;
use Path::Class qw|dir file|;
use YAML;

sub new
{

  my $class = shift;
  my %params = @_;
  return bless { %params }, $class;

}

my $cfg;
sub cfg
{

  unless( $cfg ) {
    $cfg = YAML::LoadFile("$FindBin::Bin/../etc/nadtmythconvert.yaml");
  }
  
  return $cfg;

}

my $logger;
sub log
{

  my $class = shift;
  my %opts = @_;

  unless( $logger ) {
    my $cfg = $class->cfg;
    if( $opts{verbose} ) {
      $cfg->{logging}->{'log4perl.logger'} .= ', SCREEN';
    }
    if( $opts{debug} ) {
      $cfg->{logging}->{'log4perl.logger'} =~ s/INFO/DEBUG/;
    }
    Log::Log4perl->init( $cfg->{logging} );
    $logger = Log::Log4perl->get_logger;
    Log::Log4perl::MDC->put( progname => file($0)->basename( '\..*' ) );
  }
  
  return $logger;

}

my $nadtdb;
sub nadtdb {

  my $self = shift;

  return $nadtdb if( $nadtdb );

  local $SIG{__WARN__} = sub {};
  $nadtdb = NADTMythTV::DB::NADT->connect(
    $self->{db_cred}->{dsn},
    $self->{db_cred}->{user},
    $self->{db_cred}->{password},
    { AutoCommit => 0 },
  );
  
  return $nadtdb;
  
}

my $mythdb;
sub mythdb {

  my $self = shift;

  return $mythdb if( $mythdb );

  local $SIG{__WARN__} = sub {};
  $mythdb = NADTMythTV::DB::MythTV->connect(
    "dbi:mysql:database=$MythTV::mysql_conf{db_name}:host=$MythTV::mysql_conf{db_host};port=$MythTV::mysql_conf{db_port}",
    $MythTV::mysql_conf{db_user},
    $MythTV::mysql_conf{db_pass},
    { AutoCommit => 0 },
  );
  
  return $mythdb;
  
}

my $mythdb_ac;
sub mythdb_ac {

  my $self = shift;

  return $mythdb_ac if( $mythdb_ac );

  local $SIG{__WARN__} = sub {};
  $mythdb_ac = NADTMythTV::DB::MythTV->connect(
    "dbi:mysql:database=$MythTV::mysql_conf{db_name}:host=$MythTV::mysql_conf{db_host};port=$MythTV::mysql_conf{db_port}",
    $MythTV::mysql_conf{db_user},
    $MythTV::mysql_conf{db_pass},
    { AutoCommit => 1 },
  );
  
  return $mythdb_ac;
  
}

# keep require happy
1;

#
# EOF
