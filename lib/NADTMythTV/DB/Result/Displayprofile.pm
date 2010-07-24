package NADTMythTV::DB::Result::Displayprofile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Displayprofile

=cut

__PACKAGE__->table("displayprofiles");

=head1 ACCESSORS

=head2 profilegroupid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 profileid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 data

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "profilegroupid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "profileid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "data",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:X5MvFY6nEvE08t5GFyOchA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
