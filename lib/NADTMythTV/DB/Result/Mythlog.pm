package NADTMythTV::DB::Result::Mythlog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Mythlog

=cut

__PACKAGE__->table("mythlog");

=head1 ACCESSORS

=head2 logid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 module

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 priority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 acknowledged

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 logdate

  data_type: 'datetime'
  is_nullable: 1

=head2 host

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 message

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 details

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "logid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "module",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "priority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "acknowledged",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "logdate",
  { data_type => "datetime", is_nullable => 1 },
  "host",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "message",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "details",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("logid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2Voxi/wGlpGj/XcWAZkHAw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
