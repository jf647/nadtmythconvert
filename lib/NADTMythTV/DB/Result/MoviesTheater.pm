package NADTMythTV::DB::Result::MoviesTheater;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MoviesTheater

=cut

__PACKAGE__->table("movies_theaters");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 theatername

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 theateraddress

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "theatername",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "theateraddress",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yYzIKEtitI3iokv/Yruqbw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
