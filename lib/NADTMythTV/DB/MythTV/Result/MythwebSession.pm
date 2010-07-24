package NADTMythTV::DB::MythTV::Result::MythwebSession;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::MythwebSession

=cut

__PACKAGE__->table("mythweb_sessions");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 modified

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 data

  data_type: 'blob'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "modified",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "data",
  { data_type => "blob", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bCMm0PFZNhGCQf067ChYNQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
