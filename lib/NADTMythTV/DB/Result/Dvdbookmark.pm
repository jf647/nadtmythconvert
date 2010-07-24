package NADTMythTV::DB::Result::Dvdbookmark;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Dvdbookmark

=cut

__PACKAGE__->table("dvdbookmark");

=head1 ACCESSORS

=head2 serialid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 title

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 audionum

  data_type: 'tinyint'
  default_value: -1
  is_nullable: 0

=head2 subtitlenum

  data_type: 'tinyint'
  default_value: -1
  is_nullable: 0

=head2 framenum

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timestamp

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "serialid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "title",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "audionum",
  { data_type => "tinyint", default_value => -1, is_nullable => 0 },
  "subtitlenum",
  { data_type => "tinyint", default_value => -1, is_nullable => 0 },
  "framenum",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timestamp",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("serialid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6IMuVhl0FLVAnJiuqMuteg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
