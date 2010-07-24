package NADTMythTV::DB::Result::Netvisiontreegrabber;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Netvisiontreegrabber

=cut

__PACKAGE__->table("netvisiontreegrabbers");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 thumbnail

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 commandline

  data_type: 'text'
  is_nullable: 0

=head2 updated

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 host

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "thumbnail",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "commandline",
  { data_type => "text", is_nullable => 0 },
  "updated",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "host",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5gfd1D3Sw5PRY9hCvsiM9w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
