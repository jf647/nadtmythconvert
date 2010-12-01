package NADTMythTV::DB::Result::Upnpmedia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Upnpmedia

=cut

__PACKAGE__->table("upnpmedia");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 class

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 itemtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 parentid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 itemproperties

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 filepath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 512

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 512

=head2 coverart

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 512

=cut

__PACKAGE__->add_columns(
  "intid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "class",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "itemtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "parentid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "itemproperties",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "filepath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 512 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "filename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 512 },
  "coverart",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 512 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZD0wTEBlm1iu/ESjyGYh3A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
