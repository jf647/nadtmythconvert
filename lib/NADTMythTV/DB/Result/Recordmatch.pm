package NADTMythTV::DB::Result::Recordmatch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordmatch

=cut

__PACKAGE__->table("recordmatch");

=head1 ACCESSORS

=head2 recordid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 chanid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 starttime

  data_type: 'datetime'
  is_nullable: 1

=head2 manualid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 oldrecduplicate

  data_type: 'tinyint'
  is_nullable: 1

=head2 recduplicate

  data_type: 'tinyint'
  is_nullable: 1

=head2 findduplicate

  data_type: 'tinyint'
  is_nullable: 1

=head2 oldrecstatus

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "recordid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "chanid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "starttime",
  { data_type => "datetime", is_nullable => 1 },
  "manualid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "oldrecduplicate",
  { data_type => "tinyint", is_nullable => 1 },
  "recduplicate",
  { data_type => "tinyint", is_nullable => 1 },
  "findduplicate",
  { data_type => "tinyint", is_nullable => 1 },
  "oldrecstatus",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+GmYGmDvJ7NKsSfOXqplKg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
