package NADTMythTV::DB::Result::Dvdinput;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Dvdinput

=cut

__PACKAGE__->table("dvdinput");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 hsize

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 vsize

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 ar_num

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 ar_denom

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 fr_code

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 letterbox

  data_type: 'tinyint'
  is_nullable: 1

=head2 v_format

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=cut

__PACKAGE__->add_columns(
  "intid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "hsize",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "vsize",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "ar_num",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "ar_denom",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "fr_code",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "letterbox",
  { data_type => "tinyint", is_nullable => 1 },
  "v_format",
  { data_type => "varchar", is_nullable => 1, size => 16 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9sTsOq+39wbUJ8lh1L4Gow


# You can replace this text with custom content, and it will be preserved on regeneration
1;
