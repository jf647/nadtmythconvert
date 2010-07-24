package NADTMythTV::DB::Result::Programrating;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Programrating

=cut

__PACKAGE__->table("programrating");

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

=head2 system

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 rating

  data_type: 'varchar'
  is_nullable: 1
  size: 16

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
  "system",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "rating",
  { data_type => "varchar", is_nullable => 1, size => 16 },
);
__PACKAGE__->add_unique_constraint("chanid", ["chanid", "starttime", "system", "rating"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:COcIv+KDS/NyhC/NIqX3gg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
