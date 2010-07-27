package NADTMythTV::DB::Result::NadtmythLinked;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythLinked

=cut

__PACKAGE__->table("nadtmyth_linked");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 converted_id

  data_type: 'integer'
  is_nullable: 0

=head2 linkdir

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 linkfile

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 linkdate

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "converted_id",
  { data_type => "integer", is_nullable => 0 },
  "linkdir",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "linkfile",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "linkdate",
  { data_type => "datetime", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-27 11:14:59
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+71DVeYtCnO8440vCKbcpQ

__PACKAGE__->belongs_to( converted => 'NADTMythTV::DB::Result::NadtmythConverted', 'converted_id' );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
