package NADTMythTV::DB::Result::Displayprofilegroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Displayprofilegroup

=cut

__PACKAGE__->table("displayprofilegroups");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 hostname

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 profilegroupid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "hostname",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "profilegroupid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("name", "hostname");
__PACKAGE__->add_unique_constraint("profilegroupid", ["profilegroupid"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cEH8Axe5+v9Pyot93ViIaQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
