package NADTMythTV::DB::Result::Recordingprofile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recordingprofile

=cut

__PACKAGE__->table("recordingprofiles");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 videocodec

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 audiocodec

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 profilegroup

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "videocodec",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "audiocodec",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "profilegroup",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gx06zpsIpP4/3Aa9+kXcgg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
