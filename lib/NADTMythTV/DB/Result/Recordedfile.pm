package NADTMythTV::DB::Result::Recordedfile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordedfile

=cut

__PACKAGE__->table("recordedfile");

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

=head2 basename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 filesize

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 width

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 height

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 fps

  data_type: 'float'
  default_value: 0.000
  is_nullable: 0
  size: [
  6,
  3
]


=head2 aspect

  data_type: 'float'
  default_value: 0.000000
  is_nullable: 0
  size: [
  8,
  6
]


=head2 audio_sample_rate

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 audio_bits_per_sample

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 audio_channels

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 audio_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 video_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 comment

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 hostname

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 storagegroup

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
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
  "basename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "filesize",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "width",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "height",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "fps",
  {
    data_type => "float",
    default_value => "0.000",
    is_nullable => 0,
    size => [6, 3],
  },
  "aspect",
  {
    data_type => "float",
    default_value => "0.000000",
    is_nullable => 0,
    size => [8, 6],
  },
  "audio_sample_rate",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "audio_bits_per_sample",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "audio_channels",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "audio_type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "video_type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "comment",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "hostname",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "storagegroup",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("chanid", ["chanid", "starttime", "basename"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hFOKJEJK/nCP9b6+bYrcQQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
