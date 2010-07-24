package NADTMythTV::DB::MythTV::Result::Gallerymetadata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Gallerymetadata

=cut

__PACKAGE__->table("gallerymetadata");

=head1 ACCESSORS

=head2 image

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 angle

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "image",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "angle",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("image");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yK25pTzzLeBnSWAZBi3f6A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
