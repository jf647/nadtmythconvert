package NADTMythTV::DB::Result::MusicSmartplaylistItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicSmartplaylistItem

=cut

__PACKAGE__->table("music_smartplaylist_items");

=head1 ACCESSORS

=head2 smartplaylistitemid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 smartplaylistid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 field

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 operator

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 value1

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 value2

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "smartplaylistitemid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "smartplaylistid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "field",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "operator",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "value1",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "value2",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("smartplaylistitemid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:S2cTOmjLoXCWiI3toTBpYw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
