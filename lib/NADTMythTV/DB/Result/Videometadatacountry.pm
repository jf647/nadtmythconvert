package NADTMythTV::DB::Result::Videometadatacountry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videometadatacountry

=cut

__PACKAGE__->table("videometadatacountry");

=head1 ACCESSORS

=head2 idvideo

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 idcountry

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "idvideo",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "idcountry",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cNf0Wha2gYUG/NGuqb3prg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
