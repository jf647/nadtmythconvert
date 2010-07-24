package NADTMythTV::DB::Result::Gamemetadata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Gamemetadata

=cut

__PACKAGE__->table("gamemetadata");

=head1 ACCESSORS

=head2 system

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 romname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 gamename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 genre

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 year

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 publisher

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 favorite

  data_type: 'tinyint'
  is_nullable: 1

=head2 rompath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 screenshot

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 fanart

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 plot

  data_type: 'text'
  is_nullable: 0

=head2 boxart

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 gametype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 diskcount

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 country

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 crc_value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 display

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "system",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "romname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "gamename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "genre",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "year",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "publisher",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "favorite",
  { data_type => "tinyint", is_nullable => 1 },
  "rompath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "screenshot",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "fanart",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "plot",
  { data_type => "text", is_nullable => 0 },
  "boxart",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "gametype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "diskcount",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "country",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "crc_value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "display",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YlVM2ePcJLs4c7dkGrx77g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
