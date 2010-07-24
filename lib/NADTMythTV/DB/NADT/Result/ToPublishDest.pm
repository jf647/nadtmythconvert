package NADTMythTV::DB::NADT::Result::ToPublishDest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::NADT::Result::ToPublishDest

=cut

__PACKAGE__->table("to_publish_dests");

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
__PACKAGE__->add_unique_constraint("to_publish_dests_idx1", ["to_publish_id", "dest"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:30:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fdG86EsGFzl3b3LU1QSSTA

__PACKAGE__->belongs_to( to_publish => 'NADTMythTV::DB::NADT::Result::ToPublish', 'to_publish_id' );
__PACKAGE__->might_have( to_publish_inform => 'NADTMythTV::DB::NADT::Result::ToPublishInform', 'to_publish_dests_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
