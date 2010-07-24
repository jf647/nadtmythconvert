package NADTMythTV::DB::Result::MusicAlbum;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicAlbum

=cut

__PACKAGE__->table("music_albums");

=head1 ACCESSORS

=head2 album_id

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 artist_id

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 album_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 year

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 compilation

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "album_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "artist_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "album_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "year",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "compilation",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("album_id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5nMJH8lDf+EUKSX+OMd8cA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
