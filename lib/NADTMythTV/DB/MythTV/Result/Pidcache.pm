package NADTMythTV::DB::MythTV::Result::Pidcache;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Pidcache

=cut

__PACKAGE__->table("pidcache");

=head1 ACCESSORS

=head2 chanid

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 pid

  data_type: 'integer'
  default_value: -1
  is_nullable: 0

=head2 tableid

  data_type: 'integer'
  default_value: -1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "chanid",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "pid",
  { data_type => "integer", default_value => -1, is_nullable => 0 },
  "tableid",
  { data_type => "integer", default_value => -1, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RzKbnErBSyu6dmaYqFnr8w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
