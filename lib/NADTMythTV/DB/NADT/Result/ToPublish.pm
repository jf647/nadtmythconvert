package NADTMythTV::DB::NADT::Result::ToPublish;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::NADT::Result::ToPublish

=cut

__PACKAGE__->table("to_publish");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 converted_id

  data_type: 'integer'
  is_nullable: 0

=head2 complete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "converted_id",
  { data_type => "integer", is_nullable => 0 },
  "complete",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("to_publish_idx1", ["converted_id"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:30:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+VeBydA3IxnOl0elb3iQ+Q

__PACKAGE__->belongs_to( converted => 'NADTMythTV::DB::NADT::Result::Converted', 'converted_id' );
__PACKAGE__->might_have( to_publish_dest => 'NADTMythTV::DB::NADT::Result::ToPublishDest', 'to_publish_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
