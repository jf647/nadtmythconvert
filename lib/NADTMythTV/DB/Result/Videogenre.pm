package NADTMythTV::DB::Result::Videogenre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videogenre

=cut

__PACKAGE__->table("videogenre");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 genre

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
  "genre",
  { data_type => "varchar", is_nullable => 0, size => 128 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QSjdeq1nyD/B2HTlSlhI3w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
