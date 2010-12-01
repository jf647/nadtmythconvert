package NADTMythTV::DB::Result::Record;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Record

=cut

__PACKAGE__->table("record");

=head1 ACCESSORS

=head2 recordid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 chanid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 starttime

  data_type: 'time'
  default_value: '00:00:00'
  is_nullable: 0

=head2 startdate

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

=head2 endtime

  data_type: 'time'
  default_value: '00:00:00'
  is_nullable: 0

=head2 enddate

  data_type: 'date'
  default_value: '0000-00-00'
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

=head2 profile

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 128

=head2 recpriority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 autoexpire

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 maxepisodes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 maxnewest

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 startoffset

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 endoffset

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 recgroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 dupmethod

  data_type: 'integer'
  default_value: 6
  is_nullable: 0

=head2 dupin

  data_type: 'integer'
  default_value: 15
  is_nullable: 0

=head2 station

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

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

=head2 search

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 autotranscode

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autocommflag

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autouserjob1

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autouserjob2

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autouserjob3

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autouserjob4

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 findday

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 findtime

  data_type: 'time'
  default_value: '00:00:00'
  is_nullable: 0

=head2 findid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 inactive

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 parentid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 transcoder

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tsdefault

  data_type: 'float'
  default_value: 1
  is_nullable: 0

=head2 playgroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 prefinput

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 next_record

  data_type: 'datetime'
  is_nullable: 0

=head2 last_record

  data_type: 'datetime'
  is_nullable: 0

=head2 last_delete

  data_type: 'datetime'
  is_nullable: 0

=head2 storagegroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 avg_delay

  data_type: 'integer'
  default_value: 100
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "recordid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "type",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "chanid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "starttime",
  { data_type => "time", default_value => "00:00:00", is_nullable => 0 },
  "startdate",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "endtime",
  { data_type => "time", default_value => "00:00:00", is_nullable => 0 },
  "enddate",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "category",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "profile",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 128,
  },
  "recpriority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "autoexpire",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "maxepisodes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "maxnewest",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "startoffset",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "endoffset",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "recgroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "dupmethod",
  { data_type => "integer", default_value => 6, is_nullable => 0 },
  "dupin",
  { data_type => "integer", default_value => 15, is_nullable => 0 },
  "station",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "seriesid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "programid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "search",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "autotranscode",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autocommflag",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autouserjob1",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autouserjob2",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autouserjob3",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autouserjob4",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "findday",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "findtime",
  { data_type => "time", default_value => "00:00:00", is_nullable => 0 },
  "findid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "inactive",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "parentid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "transcoder",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tsdefault",
  { data_type => "float", default_value => 1, is_nullable => 0 },
  "playgroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "prefinput",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "next_record",
  { data_type => "datetime", is_nullable => 0 },
  "last_record",
  { data_type => "datetime", is_nullable => 0 },
  "last_delete",
  { data_type => "datetime", is_nullable => 0 },
  "storagegroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "avg_delay",
  { data_type => "integer", default_value => 100, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("recordid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7R+nkZ/ipTQPEX9wdw30PA

__PACKAGE__->has_one( program => 'NADTMythTV::DB::Result::Program', 'programid' );
__PACKAGE__->has_many( recorded => 'NADTMythTV::DB::Result::Recorded', 'recordid' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
