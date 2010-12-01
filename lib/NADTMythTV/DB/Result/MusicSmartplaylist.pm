package NADTMythTV::DB::Result::MusicSmartplaylist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicSmartplaylist

=cut

__PACKAGE__->table("music_smartplaylists");

=head1 ACCESSORS

=head2 smartplaylistid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 categoryid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 matchtype

  data_type: 'set'
  default_value: 'All'
  extra: {list => ["All","Any"]}
  is_nullable: 0

=head2 orderby

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 limitto

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "smartplaylistid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "categoryid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "matchtype",
  {
    data_type => "set",
    default_value => "All",
    extra => { list => ["All", "Any"] },
    is_nullable => 0,
  },
  "orderby",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "limitto",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("smartplaylistid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ejt9u1pBL3+zoqj8wmuKaA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
