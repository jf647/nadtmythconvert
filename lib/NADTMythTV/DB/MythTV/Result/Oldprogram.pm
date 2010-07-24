package NADTMythTV::DB::MythTV::Result::Oldprogram;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Oldprogram

=cut

__PACKAGE__->table("oldprogram");

=head1 ACCESSORS

=head2 oldtitle

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 airdate

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "oldtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "airdate",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("oldtitle");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zjja3qNrhtMuF0EZdvDVvw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
