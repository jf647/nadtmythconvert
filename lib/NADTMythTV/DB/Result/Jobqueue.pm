package NADTMythTV::DB::Result::Jobqueue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Jobqueue

=cut

__PACKAGE__->table("jobqueue");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 chanid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 inserttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cmds

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 status

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 statustime

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 hostname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 args

  data_type: 'blob'
  is_nullable: 0

=head2 comment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 schedruntime

  data_type: 'datetime'
  default_value: '2007-01-01 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "chanid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "starttime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "inserttime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cmds",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "flags",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "status",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "statustime",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "hostname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "args",
  { data_type => "blob", is_nullable => 0 },
  "comment",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "schedruntime",
  {
    data_type     => "datetime",
    default_value => "2007-01-01 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("chanid", ["chanid", "starttime", "type", "inserttime"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:S0ATwig/EE3tagcaZqLwkg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
