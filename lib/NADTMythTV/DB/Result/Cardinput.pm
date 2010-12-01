package NADTMythTV::DB::Result::Cardinput;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Cardinput

=cut

__PACKAGE__->table("cardinput");

=head1 ACCESSORS

=head2 cardinputid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cardid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sourceid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 inputname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 externalcommand

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 shareable

  data_type: 'char'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 tunechan

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 startchan

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 displayname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 dishnet_eit

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 recpriority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 quicktune

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cardinputid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cardid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sourceid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "inputname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "externalcommand",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "shareable",
  { data_type => "char", default_value => "N", is_nullable => 1, size => 1 },
  "tunechan",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "startchan",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "displayname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "dishnet_eit",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "recpriority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "quicktune",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("cardinputid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/CqUN9q0ouw7Iq/vtsfK4A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
