package NADTMythTV::DB::Result::Programgenre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Programgenre

=cut

__PACKAGE__->table("programgenres");

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

=head2 relevance

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 genre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

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
  "relevance",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "genre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
);
__PACKAGE__->set_primary_key("chanid", "starttime", "relevance");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+ywh+RuneU7pObJMU0+3+A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
