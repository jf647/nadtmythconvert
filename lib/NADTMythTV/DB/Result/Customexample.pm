package NADTMythTV::DB::Result::Customexample;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Customexample

=cut

__PACKAGE__->table("customexample");

=head1 ACCESSORS

=head2 rulename

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 fromclause

  data_type: 'text'
  is_nullable: 0

=head2 whereclause

  data_type: 'text'
  is_nullable: 0

=head2 search

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "rulename",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "fromclause",
  { data_type => "text", is_nullable => 0 },
  "whereclause",
  { data_type => "text", is_nullable => 0 },
  "search",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("rulename");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XxmtMEOP8bMUsx8NWWG00g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
