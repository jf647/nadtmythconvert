package NADTMythTV::DB::Result::Recgrouppassword;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Recgrouppassword

=cut

__PACKAGE__->table("recgrouppassword");

=head1 ACCESSORS

=head2 recgroup

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "recgroup",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
);
__PACKAGE__->set_primary_key("recgroup");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:M6bFAev6DcR42jw0NUK68A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
