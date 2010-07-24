package NADTMythTV::DB::MythTV::Result::Storagegroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Storagegroup

=cut

__PACKAGE__->table("storagegroup");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 groupname

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 hostname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 dirname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 235

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "groupname",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "hostname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "dirname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 235 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("grouphostdir", ["groupname", "hostname", "dirname"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0WgXfTtbb4IMfDMKWrs8eA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
