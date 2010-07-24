package NADTMythTV::DB::NADT::Result::Converted;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::NADT::Result::Converted

=cut

__PACKAGE__->table("converted");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 chanid

  data_type: 'integer'
  is_nullable: 0

=head2 starttime

  data_type: 'datetime'
  is_nullable: 0

=head2 basename

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 storagegroup

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 destformat

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 destdir

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 destfile

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 convertdate

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "chanid",
  { data_type => "integer", is_nullable => 0 },
  "starttime",
  { data_type => "datetime", is_nullable => 0 },
  "basename",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "storagegroup",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "destformat",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "destdir",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "destfile",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "convertdate",
  { data_type => "datetime", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("converted_program", ["chanid", "starttime", "destformat"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:30:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wlAL1vFXtWZe9cQf5In1TA

__PACKAGE__->might_have( to_publish => 'NADTMythTV::DB::NADT::Result::ToPublish', 'converted_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
