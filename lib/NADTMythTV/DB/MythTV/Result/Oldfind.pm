package NADTMythTV::DB::MythTV::Result::Oldfind;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Oldfind

=cut

__PACKAGE__->table("oldfind");

=head1 ACCESSORS

=head2 recordid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 findid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "recordid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "findid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("recordid", "findid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BGGc2YaG7eaDZ9VOetlcHA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
