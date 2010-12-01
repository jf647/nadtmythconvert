package NADTMythTV::DB::Result::Recordedcredit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordedcredit

=cut

__PACKAGE__->table("recordedcredits");

=head1 ACCESSORS

=head2 person

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 chanid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 role

  data_type: 'set'
  extra: {list => ["actor","director","producer","executive_producer","writer","guest_star","host","adapter","presenter","commentator","guest"]}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "person",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
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
  "role",
  {
    data_type => "set",
    extra => {
      list => [
        "actor",
        "director",
        "producer",
        "executive_producer",
        "writer",
        "guest_star",
        "host",
        "adapter",
        "presenter",
        "commentator",
        "guest",
      ],
    },
    is_nullable => 0,
  },
);
__PACKAGE__->add_unique_constraint("chanid", ["chanid", "starttime", "person", "role"]);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tumgYwEgVwRZx2qBUBPphA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
