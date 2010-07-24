package NADTMythTV::DB::MythTV::Result::Jumppoint;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Jumppoint

=cut

__PACKAGE__->table("jumppoints");

=head1 ACCESSORS

=head2 destination

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 keylist

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 hostname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "destination",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "keylist",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "hostname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
);
__PACKAGE__->set_primary_key("destination", "hostname");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xc313EIS2aFjfpcNUOcnOw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
