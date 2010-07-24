package NADTMythTV::DB::MythTV::Result::Netvisionrssitem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Netvisionrssitem

=cut

__PACKAGE__->table("netvisionrssitems");

=head1 ACCESSORS

=head2 feedtitle

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 url

  data_type: 'text'
  is_nullable: 0

=head2 thumbnail

  data_type: 'text'
  is_nullable: 0

=head2 mediaurl

  data_type: 'text'
  is_nullable: 0

=head2 author

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 date

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 time

  data_type: 'integer'
  is_nullable: 0

=head2 rating

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 filesize

  data_type: 'bigint'
  is_nullable: 0

=head2 player

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 playerargs

  data_type: 'text'
  is_nullable: 0

=head2 download

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 downloadargs

  data_type: 'text'
  is_nullable: 0

=head2 width

  data_type: 'smallint'
  is_nullable: 0

=head2 height

  data_type: 'smallint'
  is_nullable: 0

=head2 language

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 downloadable

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "feedtitle",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "url",
  { data_type => "text", is_nullable => 0 },
  "thumbnail",
  { data_type => "text", is_nullable => 0 },
  "mediaurl",
  { data_type => "text", is_nullable => 0 },
  "author",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "date",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "time",
  { data_type => "integer", is_nullable => 0 },
  "rating",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "filesize",
  { data_type => "bigint", is_nullable => 0 },
  "player",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "playerargs",
  { data_type => "text", is_nullable => 0 },
  "download",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "downloadargs",
  { data_type => "text", is_nullable => 0 },
  "width",
  { data_type => "smallint", is_nullable => 0 },
  "height",
  { data_type => "smallint", is_nullable => 0 },
  "language",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "downloadable",
  { data_type => "tinyint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aK5N0Lb3ZnBYUqRZup4g+g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
