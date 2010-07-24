package NADTMythTV::DB::Result::MoviesMovy;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MoviesMovy

=cut

__PACKAGE__->table("movies_movies");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 moviename

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 rating

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 runningtime

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "moviename",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "rating",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "runningtime",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sbbn0VrJ3AHPUO/RoilFSg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
