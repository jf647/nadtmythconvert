package NADTMythTV::DB::Result::Recordedmarkup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordedmarkup

=cut

__PACKAGE__->table("recordedmarkup");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 mark

  data_type: 'mediumint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 data

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "chanid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "starttime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "mark",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "data",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("chanid", "starttime", "type", "mark");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qfqu3fIUvFHiqM0o+N5Dfw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
