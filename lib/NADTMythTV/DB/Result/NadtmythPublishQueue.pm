package NADTMythTV::DB::Result::NadtmythPublishQueue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythPublishQueue

=cut

__PACKAGE__->table("nadtmyth_publish_queue");

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

=head2 id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 complete

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 dest

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 50

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
  "id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "complete",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "dest",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 50 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-25 09:49:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NeuH8po9aHwuWD7zfsbbWw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
