package NADTMythTV::DB::Result::Tvchain;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Tvchain

=cut

__PACKAGE__->table("tvchain");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 chainid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 chainpos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 discontinuity

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 watching

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 hostprefix

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 cardtype

  data_type: 'varchar'
  default_value: 'V4L'
  is_nullable: 0
  size: 32

=head2 input

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 channame

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 endtime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "chanid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "starttime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "chainid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "chainpos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "discontinuity",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "watching",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "hostprefix",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "cardtype",
  {
    data_type => "varchar",
    default_value => "V4L",
    is_nullable => 0,
    size => 32,
  },
  "input",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "channame",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "endtime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("chanid", "starttime");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nHhhiRtjzN+grOBQM7FFUg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
