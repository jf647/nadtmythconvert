package NADTMythTV::DB::MythTV::Result::Weatherscreen;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Weatherscreen

=cut

__PACKAGE__->table("weatherscreens");

=head1 ACCESSORS

=head2 screen_id

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 draworder

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 container

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 units

  data_type: 'tinyint'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "screen_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "draworder",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "container",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "hostname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "units",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("screen_id");

=head1 RELATIONS

=head2 weatherdatalayouts

Type: has_many

Related object: L<NADTMythTV::DB::MythTV::Result::Weatherdatalayout>

=cut

__PACKAGE__->has_many(
  "weatherdatalayouts",
  "NADTMythTV::DB::MythTV::Result::Weatherdatalayout",
  { "foreign.weatherscreens_screen_id" => "self.screen_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RgFIWaphrg6wpZ/6xMNtbw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
