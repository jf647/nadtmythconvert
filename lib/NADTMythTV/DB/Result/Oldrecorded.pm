package NADTMythTV::DB::Result::Oldrecorded;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Oldrecorded

=cut

__PACKAGE__->table("oldrecorded");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 endtime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 subtitle

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 category

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 seriesid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 programid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 findid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 recordid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 station

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 rectype

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 duplicate

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 recstatus

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 reactivate

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 generic

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

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
  "endtime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "category",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "seriesid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "programid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "findid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "recordid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "station",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "rectype",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "duplicate",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "recstatus",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "reactivate",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "generic",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("station", "starttime", "title");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TxDayhPc/t+ES5fJw77QcQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
