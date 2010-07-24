package NADTMythTV::DB::Result::EitCache;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::EitCache

=cut

__PACKAGE__->table("eit_cache");

=head1 ACCESSORS

=head2 chanid

  data_type: 'integer'
  is_nullable: 0

=head2 eventid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 tableid

  data_type: 'tinyint'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 version

  data_type: 'tinyint'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 endtime

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 status

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "chanid",
  { data_type => "integer", is_nullable => 0 },
  "eventid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "tableid",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "version",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "endtime",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "status",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("chanid", "eventid", "status");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fc3rpaLJ3GnUS64DXrWfNw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
