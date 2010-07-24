package NADTMythTV::DB::Result::DiseqcConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::DiseqcConfig

=cut

__PACKAGE__->table("diseqc_config");

=head1 ACCESSORS

=head2 cardinputid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 diseqcid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 value

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=cut

__PACKAGE__->add_columns(
  "cardinputid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "diseqcid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "value",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E0Dn2aytU/v/46LPJc9niw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
