package NADTMythTV::DB::MythTV::Result::Phonedirectory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Phonedirectory

=cut

__PACKAGE__->table("phonedirectory");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 nickname

  data_type: 'text'
  is_nullable: 0

=head2 firstname

  data_type: 'text'
  is_nullable: 1

=head2 surname

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 0

=head2 directory

  data_type: 'text'
  is_nullable: 0

=head2 photofile

  data_type: 'text'
  is_nullable: 1

=head2 speeddial

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 onhomelan

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "intid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "nickname",
  { data_type => "text", is_nullable => 0 },
  "firstname",
  { data_type => "text", is_nullable => 1 },
  "surname",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "text", is_nullable => 0 },
  "directory",
  { data_type => "text", is_nullable => 0 },
  "photofile",
  { data_type => "text", is_nullable => 1 },
  "speeddial",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "onhomelan",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zi4YYg8vmDix09XrmPYZIg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
