package NADTMythTV::DB::Result::Keyword;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Keyword

=cut

__PACKAGE__->table("keyword");

=head1 ACCESSORS

=head2 phrase

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 searchtype

  data_type: 'integer'
  default_value: 3
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "phrase",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "searchtype",
  {
    data_type => "integer",
    default_value => 3,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->add_unique_constraint("phrase", ["phrase", "searchtype"]);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OAkSKdRZvKq4vvRzXKPXtA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
