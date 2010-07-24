package NADTMythTV::DB::Result::Playgroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Playgroup

=cut

__PACKAGE__->table("playgroup");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 titlematch

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 skipahead

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 skipback

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 timestretch

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 jump

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "titlematch",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "skipahead",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "skipback",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "timestretch",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "jump",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("name");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GPbUPoqPVva6d425XYqBTg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
