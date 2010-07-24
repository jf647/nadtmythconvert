package NADTMythTV::DB::Result::Recordedprogram;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordedprogram

=cut

__PACKAGE__->table("recordedprogram");

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

=head2 category_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 airdate

  data_type: 'year'
  default_value: 0000
  is_nullable: 0

=head2 stars

  data_type: 'float'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 previouslyshown

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 title_pronounce

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 stereo

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 subtitled

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 hdtv

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 closecaptioned

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 partnumber

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 parttotal

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 seriesid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 originalairdate

  data_type: 'date'
  is_nullable: 1

=head2 showtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 colorcode

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 syndicatedepisodenumber

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 programid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 manualid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 generic

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 listingsource

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 first

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 last

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 audioprop

  data_type: 'set'
  extra: {
  list => [
    "STEREO",
    "MONO",
    "SURROUND",
    "DOLBY",
    "HARDHEAR",
    "VISUALIMPAIR"
  ]
}

  is_nullable: 0

=head2 subtitletypes

  data_type: 'set'
  extra: {
  list => [
    "HARDHEAR",
    "NORMAL",
    "ONSCREEN",
    "SIGNED"
  ]
}

  is_nullable: 0

=head2 videoprop

  data_type: 'set'
  extra: {
  list => [
    "HDTV",
    "WIDESCREEN",
    "AVC",
    720,
    1080
  ]
}

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
  "category_type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "airdate",
  { data_type => "year", default_value => "0000", is_nullable => 0 },
  "stars",
  {
    data_type => "float",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "previouslyshown",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "title_pronounce",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "stereo",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "subtitled",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "hdtv",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "closecaptioned",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "partnumber",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "parttotal",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "seriesid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "originalairdate",
  { data_type => "date", is_nullable => 1 },
  "showtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "colorcode",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "syndicatedepisodenumber",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "programid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "manualid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "generic",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "listingsource",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "first",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "last",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "audioprop",
  {
    data_type => "set",
    extra => {
          list => ["STEREO", "MONO", "SURROUND", "DOLBY", "HARDHEAR", "VISUALIMPAIR"],
        },
    is_nullable => 0,
  },
  "subtitletypes",
  {
    data_type => "set",
    extra => { list => ["HARDHEAR", "NORMAL", "ONSCREEN", "SIGNED"] },
    is_nullable => 0,
  },
  "videoprop",
  {
    data_type => "set",
    extra => { list => ["HDTV", "WIDESCREEN", "AVC", 720, 1080] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("chanid", "starttime", "manualid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/5yFWl1V5JEoY8U+E79QiA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
