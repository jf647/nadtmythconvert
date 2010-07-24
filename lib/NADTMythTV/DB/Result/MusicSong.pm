package NADTMythTV::DB::Result::MusicSong;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicSong

=cut

__PACKAGE__->table("music_songs");

=head1 ACCESSORS

=head2 song_id

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 filename

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 track

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 artist_id

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 album_id

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 genre_id

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 year

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 length

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 numplays

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 rating

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 lastplay

  data_type: 'datetime'
  is_nullable: 1

=head2 date_entered

  data_type: 'datetime'
  is_nullable: 1

=head2 date_modified

  data_type: 'datetime'
  is_nullable: 1

=head2 format

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 4

=head2 mythdigest

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 size

  data_type: 'bigint'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 comment

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 disc_count

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 disc_number

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 track_count

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 start_time

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 stop_time

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 eq_preset

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 relative_volume

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 sample_rate

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 bitrate

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 bpm

  data_type: 'smallint'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 directory_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "song_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "filename",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "track",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "artist_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "album_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "genre_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "year",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "length",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "numplays",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "rating",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "lastplay",
  { data_type => "datetime", is_nullable => 1 },
  "date_entered",
  { data_type => "datetime", is_nullable => 1 },
  "date_modified",
  { data_type => "datetime", is_nullable => 1 },
  "format",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 4 },
  "mythdigest",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "size",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "comment",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "disc_count",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "disc_number",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "track_count",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "start_time",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "stop_time",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "eq_preset",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "relative_volume",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "sample_rate",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "bitrate",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "bpm",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "directory_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("song_id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gE3UKnq+2I4vgRSBvrHkyQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
