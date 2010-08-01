package NADTMythTV::DB::Result::NadtmythPublishHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythPublishHistory

=cut

__PACKAGE__->table("nadtmyth_publish_history");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 chanid

  data_type: 'integer'
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 subtitle

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 select_date

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "chanid",
  { data_type => "integer", is_nullable => 0 },
  "starttime",
  { data_type => "datetime", is_nullable => 0 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "select_date",
  { data_type => "datetime", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("nadtmyth_publish_history_idx1", ["chanid", "starttime"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-08-01 12:37:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E6Wee1ZtEJQrsRJWKnQzYA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
