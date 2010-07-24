package NADTMythTV::DB::Result::Setting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Setting

=cut

__PACKAGE__->table("settings");

=head1 ACCESSORS

=head2 value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 data

  data_type: 'text'
  is_nullable: 1

=head2 hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "data",
  { data_type => "text", is_nullable => 1 },
  "hostname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OBfIga7ue+8uXmKEETg8GQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
