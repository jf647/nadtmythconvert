package NADTMythTV::DB::Result::Inuseprogram;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Inuseprogram

=cut

__PACKAGE__->table("inuseprograms");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 recusage

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 lastupdatetime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 hostname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 rechost

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 recdir

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

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
  "recusage",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "lastupdatetime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "hostname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "rechost",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "recdir",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YMHE+YpDjgQma/EgJUqbPQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
