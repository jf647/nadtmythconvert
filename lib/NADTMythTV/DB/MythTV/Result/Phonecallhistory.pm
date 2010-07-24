package NADTMythTV::DB::MythTV::Result::Phonecallhistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Phonecallhistory

=cut

__PACKAGE__->table("phonecallhistory");

=head1 ACCESSORS

=head2 recid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 displayname

  data_type: 'text'
  is_nullable: 0

=head2 url

  data_type: 'text'
  is_nullable: 0

=head2 timestamp

  data_type: 'text'
  is_nullable: 0

=head2 duration

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 directionin

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 directoryref

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "recid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "displayname",
  { data_type => "text", is_nullable => 0 },
  "url",
  { data_type => "text", is_nullable => 0 },
  "timestamp",
  { data_type => "text", is_nullable => 0 },
  "duration",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "directionin",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "directoryref",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("recid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:t9V2dGw5l2wDcwrHPKHVKw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
