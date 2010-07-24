package NADTMythTV::DB::MythTV::Result::Archiveitem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Archiveitem

=cut

__PACKAGE__->table("archiveitems");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'set'
  extra: {
  list => [
    "Recording",
    "Video",
    "File"
  ]
}

  is_nullable: 1

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 subtitle

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 startdate

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 starttime

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 size

  data_type: 'bigint'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 filename

  data_type: 'text'
  is_nullable: 0

=head2 hascutlist

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 cutlist

  data_type: 'text'
  is_nullable: 1

=head2 duration

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 cutduration

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 videowidth

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 videoheight

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 filecodec

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 videocodec

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 encoderprofile

  data_type: 'varchar'
  default_value: 'NONE'
  is_nullable: 0
  size: 50

=cut

__PACKAGE__->add_columns(
  "intid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "type",
  {
    data_type => "set",
    extra => { list => ["Recording", "Video", "File"] },
    is_nullable => 1,
  },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "subtitle",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "startdate",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "starttime",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "size",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "filename",
  { data_type => "text", is_nullable => 0 },
  "hascutlist",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "cutlist",
  { data_type => "text", is_nullable => 1 },
  "duration",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cutduration",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "videowidth",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "videoheight",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "filecodec",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "videocodec",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "encoderprofile",
  {
    data_type => "varchar",
    default_value => "NONE",
    is_nullable => 0,
    size => 50,
  },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:K4aHp7akp3bqp0FJMK5fSA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
