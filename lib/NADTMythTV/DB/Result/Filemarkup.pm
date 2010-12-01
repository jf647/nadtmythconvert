package NADTMythTV::DB::Result::Filemarkup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Filemarkup

=cut

__PACKAGE__->table("filemarkup");

=head1 ACCESSORS

=head2 filename

  data_type: 'text'
  is_nullable: 0

=head2 mark

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 offset

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 type

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "filename",
  { data_type => "text", is_nullable => 0 },
  "mark",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "offset",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QSqBrLAhadM8Fe7fZNwGRg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
