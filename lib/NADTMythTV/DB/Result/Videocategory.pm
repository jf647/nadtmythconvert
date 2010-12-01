package NADTMythTV::DB::Result::Videocategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videocategory

=cut

__PACKAGE__->table("videocategory");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 category

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
  "category",
  { data_type => "varchar", is_nullable => 0, size => 128 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ffIACr4/Pk1sMqaDRrQ+cw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
