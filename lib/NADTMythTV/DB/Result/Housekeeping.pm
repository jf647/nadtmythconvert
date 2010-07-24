package NADTMythTV::DB::Result::Housekeeping;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Housekeeping

=cut

__PACKAGE__->table("housekeeping");

=head1 ACCESSORS

=head2 tag

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 lastrun

  data_type: 'datetime'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tag",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "lastrun",
  { data_type => "datetime", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("tag");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AgkEvOCA1DURXE5XM1hayw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
