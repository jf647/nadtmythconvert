package NADTMythTV::DB::Result::Romdb;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Romdb

=cut

__PACKAGE__->table("romdb");

=head1 ACCESSORS

=head2 crc

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 category

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 year

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 manufacturer

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 country

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 publisher

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 platform

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 filesize

  data_type: 'integer'
  is_nullable: 1

=head2 flags

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 binfile

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "crc",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "description",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "category",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "year",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "manufacturer",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "country",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "publisher",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "platform",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "filesize",
  { data_type => "integer", is_nullable => 1 },
  "flags",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "binfile",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:f3IrvpmwOnvi4buatCoLig


# You can replace this text with custom content, and it will be preserved on regeneration
1;
