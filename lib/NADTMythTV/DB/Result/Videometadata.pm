package NADTMythTV::DB::Result::Videometadata;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videometadata

=cut

__PACKAGE__->table("videometadata");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 subtitle

  data_type: 'text'
  is_nullable: 0

=head2 director

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 plot

  data_type: 'text'
  is_nullable: 1

=head2 rating

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 inetref

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 homepage

  data_type: 'text'
  is_nullable: 0

=head2 year

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 releasedate

  data_type: 'date'
  is_nullable: 0

=head2 userrating

  data_type: 'float'
  is_nullable: 0

=head2 length

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 season

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 episode

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 showlevel

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 filename

  data_type: 'text'
  is_nullable: 0

=head2 hash

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 coverfile

  data_type: 'text'
  is_nullable: 0

=head2 childid

  data_type: 'integer'
  default_value: -1
  is_nullable: 0

=head2 browse

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 watched

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 playcommand

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 category

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 trailer

  data_type: 'text'
  is_nullable: 1

=head2 host

  data_type: 'text'
  is_nullable: 0

=head2 screenshot

  data_type: 'text'
  is_nullable: 1

=head2 banner

  data_type: 'text'
  is_nullable: 1

=head2 fanart

  data_type: 'text'
  is_nullable: 1

=head2 insertdate

  data_type: 'timestamp'
  default_value: current_timestamp
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
  "title",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "text", is_nullable => 0 },
  "director",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "plot",
  { data_type => "text", is_nullable => 1 },
  "rating",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "inetref",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "homepage",
  { data_type => "text", is_nullable => 0 },
  "year",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "releasedate",
  { data_type => "date", is_nullable => 0 },
  "userrating",
  { data_type => "float", is_nullable => 0 },
  "length",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "season",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "episode",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "showlevel",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "filename",
  { data_type => "text", is_nullable => 0 },
  "hash",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "coverfile",
  { data_type => "text", is_nullable => 0 },
  "childid",
  { data_type => "integer", default_value => -1, is_nullable => 0 },
  "browse",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "watched",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "playcommand",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "category",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "trailer",
  { data_type => "text", is_nullable => 1 },
  "host",
  { data_type => "text", is_nullable => 0 },
  "screenshot",
  { data_type => "text", is_nullable => 1 },
  "banner",
  { data_type => "text", is_nullable => 1 },
  "fanart",
  { data_type => "text", is_nullable => 1 },
  "insertdate",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 1,
  },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CsM1qGRQ28wC0heVjZ8WuA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
