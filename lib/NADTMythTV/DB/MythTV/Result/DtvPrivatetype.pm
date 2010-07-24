package NADTMythTV::DB::MythTV::Result::DtvPrivatetype;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::DtvPrivatetype

=cut

__PACKAGE__->table("dtv_privatetypes");

=head1 ACCESSORS

=head2 sitype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 4

=head2 networkid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 private_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 private_value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=cut

__PACKAGE__->add_columns(
  "sitype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 4 },
  "networkid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "private_type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "private_value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BpxOjmh27eS+zu/8CuBPSg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
