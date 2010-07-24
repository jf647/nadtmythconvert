package NADTMythTV::DB::Result::Netvisionsite;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Netvisionsite

=cut

__PACKAGE__->table("netvisionsites");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 thumbnail

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 0

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 download

  data_type: 'tinyint'
  is_nullable: 0

=head2 updated

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "thumbnail",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "text", is_nullable => 0 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "download",
  { data_type => "tinyint", is_nullable => 0 },
  "updated",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("name");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F6ASg7u3z68S+v5ZcHGubQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
