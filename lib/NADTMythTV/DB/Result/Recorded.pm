package NADTMythTV::DB::Result::Recorded;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recorded

=cut

__PACKAGE__->table("recorded");

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

=head2 endtime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 subtitle

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 category

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 hostname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 bookmark

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 editing

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 cutlist

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 autoexpire

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 commflagged

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 recgroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 recordid

  data_type: 'integer'
  is_nullable: 1

=head2 seriesid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 programid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 lastmodified

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 filesize

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 stars

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 previouslyshown

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 originalairdate

  data_type: 'date'
  is_nullable: 1

=head2 preserve

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 findid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 deletepending

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 transcoder

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 timestretch

  data_type: 'float'
  default_value: 1
  is_nullable: 0

=head2 recpriority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 basename

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 progstart

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 progend

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 playgroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 profile

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 duplicate

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 transcoded

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 watched

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 storagegroup

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 32

=head2 bookmarkupdate

  data_type: 'timestamp'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

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
  "endtime",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "subtitle",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "description",
  { data_type => "text", is_nullable => 0 },
  "category",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "hostname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "bookmark",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "editing",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cutlist",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "autoexpire",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "commflagged",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "recgroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "recordid",
  { data_type => "integer", is_nullable => 1 },
  "seriesid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "programid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "lastmodified",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "filesize",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "stars",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "previouslyshown",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "originalairdate",
  { data_type => "date", is_nullable => 1 },
  "preserve",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "findid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "deletepending",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "transcoder",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "timestretch",
  { data_type => "float", default_value => 1, is_nullable => 0 },
  "recpriority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "basename",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "progstart",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "progend",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "playgroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "profile",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "duplicate",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "transcoded",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "watched",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "storagegroup",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 32,
  },
  "bookmarkupdate",
  {
    data_type     => "timestamp",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("chanid", "starttime");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xTgPSye8tQuGMT2R4bmTew

__PACKAGE__->has_many( converted => 'NADTMythTV::DB::Result::NadtmythConverted', {
  'foreign.chanid' => 'self.chanid',
  'foreign.starttime' => 'self.starttime',
} );
__PACKAGE__->belongs_to( record => 'NADTMythTV::DB::Result::Record', 'recordid' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
