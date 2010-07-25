package NADTMythTV::DB::Result::NadtmythToPublishInform;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythToPublishInform

=cut

__PACKAGE__->table("nadtmyth_to_publish_inform");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 to_publish_dest_id

  data_type: 'integer'
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 informed

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "to_publish_dest_id",
  { data_type => "integer", is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "informed",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint(
  "nadtmyth_to_publish_inform_idx1",
  ["to_publish_dest_id", "email"],
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-25 18:03:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fwZCR7kFWv7tSSg7LYaplQ

__PACKAGE__->belongs_to( to_publish_dest => 'NADTMythTV::DB::Result::NadtmythToPublishDest', 'to_publish_dest_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
