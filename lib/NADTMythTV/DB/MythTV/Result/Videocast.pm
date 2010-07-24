package NADTMythTV::DB::MythTV::Result::Videocast;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Videocast

=cut

__PACKAGE__->table("videocast");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 cast

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=cut

__PACKAGE__->add_columns(
  "intid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cast",
  { data_type => "varchar", is_nullable => 0, size => 128 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JR3RcRQUWZpEKgf/24QOsg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
