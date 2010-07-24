package NADTMythTV::DB::MythTV::Result::Newssite;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Newssite

=cut

__PACKAGE__->table("newssites");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 category

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ico

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 updated

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 podcast

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "category",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ico",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "updated",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "podcast",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("name");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2Gxl7UxagYFMlqaKWOTjJw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
