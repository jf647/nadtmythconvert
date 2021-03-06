package NADTMythTV::DB::Result::Networkiconmap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Networkiconmap

=cut

__PACKAGE__->table("networkiconmap");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 network

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "network",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("network", ["network"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FJSYWD4a8+AkdrB68T49iw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
