package NADTMythTV::DB::Result::NadtmythPublishS3;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythPublishS3

=cut

__PACKAGE__->table("nadtmyth_publish_s3");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 to_publish_dest_id

  data_type: 'integer'
  is_nullable: 0

=head2 objkey

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 public_url

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 torrent_url

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "to_publish_dest_id",
  { data_type => "integer", is_nullable => 0 },
  "objkey",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "public_url",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "torrent_url",
  { data_type => "varchar", is_nullable => 1, size => 250 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("nadtmyth_publish_s3_idx1", ["to_publish_dest_id"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-09-06 14:35:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+ciGdfUhWOGdaL/n5pYizw

__PACKAGE__->belongs_to( 'to_publish_dest', 'NADTMythTV::DB::Result::NadtmythToPublishDest', 'to_publish_dest_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
