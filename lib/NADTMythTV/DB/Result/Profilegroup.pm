package NADTMythTV::DB::Result::Profilegroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Profilegroup

=cut

__PACKAGE__->table("profilegroups");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 cardtype

  data_type: 'varchar'
  default_value: 'V4L'
  is_nullable: 0
  size: 32

=head2 is_default

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "cardtype",
  {
    data_type => "varchar",
    default_value => "V4L",
    is_nullable => 0,
    size => 32,
  },
  "is_default",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "hostname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("name", ["name", "hostname"]);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ES2dTqe9ak9Lc/Dp4SSS1g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
