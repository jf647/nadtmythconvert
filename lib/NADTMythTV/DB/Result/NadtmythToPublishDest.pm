package NADTMythTV::DB::Result::NadtmythToPublishDest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythToPublishDest

=cut

__PACKAGE__->table("nadtmyth_to_publish_dest");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 to_publish_id

  data_type: 'integer'
  is_nullable: 0

=head2 dest

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 published

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 publish_date

  data_type: 'datetime'
  is_nullable: 1

=head2 purge_date

  data_type: 'datetime'
  is_nullable: 1

=head2 informed

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "to_publish_id",
  { data_type => "integer", is_nullable => 0 },
  "dest",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "published",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "publish_date",
  { data_type => "datetime", is_nullable => 1 },
  "purge_date",
  { data_type => "datetime", is_nullable => 1 },
  "informed",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("nadtmyth_to_publish_dest_idx1", ["to_publish_id", "dest"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x7gDK9yqSitsr5wP8+NKUg

__PACKAGE__->belongs_to( to_publish => 'NADTMythTV::DB::Result::NadtmythToPublish', 'to_publish_id' );
__PACKAGE__->might_have( to_publish_inform => 'NADTMythTV::DB::Result::NadtmythToPublishInform', 'to_publish_dests_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
