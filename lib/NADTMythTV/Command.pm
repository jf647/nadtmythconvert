#
# $Id$
#

package NADTMythTV::Command;
use base Class::Accessor;
use Class::C3;

use strict;
use warnings;

use IPC::Run 'run';
use NADTMythTV;
use File::Temp 'tempdir';
use Path::Class qw|dir file|;
use File::pushd;

NADTMythTV::Command->mk_accessors( qw|
  program
  args
  tempdname
  pushed_dir
| );

sub pre
{

  my $self = shift;
  my $wf = shift;
  
  my $cfg = NADTMythTV->cfg;
  my $tempdir = tempdir( DIR => $cfg->{directories}->{temp} );
  
  $self->tempdname( dir( $tempdir ) );
  my $pushd = pushd( $self->tempdname );
  $self->pushed_dir( $pushd );

}

sub post
{

  my $self = shift;
  my $wf = shift;
  
  $self->pushed_dir( undef );
  $self->tempdname->rmtree;
  $self->tempdname( undef );

}

sub new
{
  
  my $class = shift;

  my $self = bless {}, $class;
  $self->init(@_);

  return $self;

}

sub init
{

  my $self = shift;
  my %params = @_;
  
  $self->args( [] );

  return $self;

}

sub execute
{

  my $self = shift;
  my $wf = shift;
  
  my $log = NADTMythTV->log;
  my $cfg = NADTMythTV->cfg;
  
  unless( $self->program ) {
    $log->logdie("no program defined for ", ref $self);
  }

  $self->pre($wf);
  
  my @command = (
    $cfg->{commands}->{nice},
    '-' . $cfg->{commands}->{nicelevel},
    $self->program,
    @{ $self->args },
  );

  $log->debug("running command: @command");
  my $output;
  unless( run \@command, '>&', \$output ) {
    $log->logdie("cannot run " . $self->program . ": $output");
  }
  
  $self->post($wf);

  return 1;

}

# keep require happy
1;

#
# EOF
