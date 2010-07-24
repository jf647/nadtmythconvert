package NADTMythTV::DB::Result::NadtmythToPublish;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythToPublish

=cut

__PACKAGE__->table("nadtmyth_to_publish");

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
__PACKAGE__->add_unique_constraint("nadtmyth_to_publish_idx1", ["converted_id"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cRn0CnKp1Cw13ytQ1jpc3A

__PACKAGE__->belongs_to( converted => 'NADTMythTV::DB::Result::NadtmythConverted', 'converted_id' );
__PACKAGE__->might_have( to_publish_dest => 'NADTMythTV::DB::Result::NadtmythToPublishDest', 'to_publish_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
