package NADTMythTV::DB::Result::NadtmythPublish;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythPublish

=cut

__PACKAGE__->table("nadtmyth_publish");

=head1 ACCESSORS

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 subtitle

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 size

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 linked_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 link

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 511

=head2 publish_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dest_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 s3_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 inform_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 all_published

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 complete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 all_informed

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

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

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 250

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
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "starttime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "size",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "linked_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "link",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 511 },
  "publish_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dest_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "s3_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "inform_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "all_published",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "complete",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "all_informed",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "dest",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "published",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "publish_date",
  { data_type => "datetime", is_nullable => 1 },
  "purge_date",
  { data_type => "datetime", is_nullable => 1 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "informed",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-08-01 12:37:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:414hLOCIiQ9Te8Z+Wco7Gg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
