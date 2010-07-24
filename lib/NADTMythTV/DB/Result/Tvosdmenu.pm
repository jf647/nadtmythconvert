package NADTMythTV::DB::Result::Tvosdmenu;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Tvosdmenu

=cut

__PACKAGE__->table("tvosdmenu");

=head1 ACCESSORS

=head2 osdcategory

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 livetv

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 recorded

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 video

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 dvd

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "osdcategory",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "livetv",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "recorded",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "video",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "dvd",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);
__PACKAGE__->set_primary_key("osdcategory");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xYEHOR05dGAFS/KmXBCCfQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
