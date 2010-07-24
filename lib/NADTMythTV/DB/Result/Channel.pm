package NADTMythTV::DB::Result::Channel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Channel

=cut

__PACKAGE__->table("channel");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 channum

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 freqid

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 sourceid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 callsign

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 icon

  data_type: 'varchar'
  default_value: 'none'
  is_nullable: 0
  size: 255

=head2 finetune

  data_type: 'integer'
  is_nullable: 1

=head2 videofilters

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 xmltvid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 recpriority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 contrast

  data_type: 'integer'
  default_value: 32768
  is_nullable: 1

=head2 brightness

  data_type: 'integer'
  default_value: 32768
  is_nullable: 1

=head2 colour

  data_type: 'integer'
  default_value: 32768
  is_nullable: 1

=head2 hue

  data_type: 'integer'
  default_value: 32768
  is_nullable: 1

=head2 tvformat

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 10

=head2 visible

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 outputfilters

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 useonairguide

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 mplexid

  data_type: 'smallint'
  is_nullable: 1

=head2 serviceid

  data_type: 'mediumint'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 tmoffset

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 atsc_major_chan

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 atsc_minor_chan

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 last_record

  data_type: 'datetime'
  is_nullable: 0

=head2 default_authority

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 commmethod

  data_type: 'integer'
  default_value: -1
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
  "channum",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "freqid",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "sourceid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "callsign",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "icon",
  {
    data_type => "varchar",
    default_value => "none",
    is_nullable => 0,
    size => 255,
  },
  "finetune",
  { data_type => "integer", is_nullable => 1 },
  "videofilters",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "xmltvid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "recpriority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "contrast",
  { data_type => "integer", default_value => 32768, is_nullable => 1 },
  "brightness",
  { data_type => "integer", default_value => 32768, is_nullable => 1 },
  "colour",
  { data_type => "integer", default_value => 32768, is_nullable => 1 },
  "hue",
  { data_type => "integer", default_value => 32768, is_nullable => 1 },
  "tvformat",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 10,
  },
  "visible",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "outputfilters",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "useonairguide",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "mplexid",
  { data_type => "smallint", is_nullable => 1 },
  "serviceid",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "tmoffset",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "atsc_major_chan",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "atsc_minor_chan",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "last_record",
  { data_type => "datetime", is_nullable => 0 },
  "default_authority",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "commmethod",
  { data_type => "integer", default_value => -1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("chanid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hRYrGGOTWRm489jrttC8BA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
