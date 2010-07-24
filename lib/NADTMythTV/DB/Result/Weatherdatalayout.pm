package NADTMythTV::DB::Result::Weatherdatalayout;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Weatherdatalayout

=cut

__PACKAGE__->table("weatherdatalayout");

=head1 ACCESSORS

=head2 location

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 dataitem

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 weatherscreens_screen_id

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_foreign_key: 1
  is_nullable: 0

=head2 weathersourcesettings_sourceid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "location",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "dataitem",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "weatherscreens_screen_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "weathersourcesettings_sourceid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key(
  "location",
  "dataitem",
  "weatherscreens_screen_id",
  "weathersourcesettings_sourceid",
);

=head1 RELATIONS

=head2 weatherscreens_screen

Type: belongs_to

Related object: L<NADTMythTV::DB::Result::Weatherscreen>

=cut

__PACKAGE__->belongs_to(
  "weatherscreens_screen",
  "NADTMythTV::DB::Result::Weatherscreen",
  { screen_id => "weatherscreens_screen_id" },
  { on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 weathersourcesettings_sourceid

Type: belongs_to

Related object: L<NADTMythTV::DB::Result::Weathersourcesetting>

=cut

__PACKAGE__->belongs_to(
  "weathersourcesettings_sourceid",
  "NADTMythTV::DB::Result::Weathersourcesetting",
  { sourceid => "weathersourcesettings_sourceid" },
  { on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZOfNwJiDeui6lhI3/B6bnQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
