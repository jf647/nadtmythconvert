package NADTMythTV::DB::Result::Weathersourcesetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Weathersourcesetting

=cut

__PACKAGE__->table("weathersourcesettings");

=head1 ACCESSORS

=head2 sourceid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 source_name

  accessor: undef
  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 update_timeout

  data_type: 'integer'
  default_value: 600
  extra: {unsigned => 1}
  is_nullable: 0

=head2 retrieve_timeout

  data_type: 'integer'
  default_value: 60
  extra: {unsigned => 1}
  is_nullable: 0

=head2 hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 path

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 version

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 types

  data_type: 'mediumtext'
  is_nullable: 1

=head2 updated

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sourceid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "source_name",
  { accessor => undef, data_type => "varchar", is_nullable => 0, size => 64 },
  "update_timeout",
  {
    data_type => "integer",
    default_value => 600,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "retrieve_timeout",
  {
    data_type => "integer",
    default_value => 60,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "hostname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "path",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "version",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "types",
  { data_type => "mediumtext", is_nullable => 1 },
  "updated",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("sourceid");

=head1 RELATIONS

=head2 weatherdatalayouts

Type: has_many

Related object: L<NADTMythTV::DB::Result::Weatherdatalayout>

=cut

__PACKAGE__->has_many(
  "weatherdatalayouts",
  "NADTMythTV::DB::Result::Weatherdatalayout",
  { "foreign.weathersourcesettings_sourceid" => "self.sourceid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0siRN20NKYjOaV6xFhV+qA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
