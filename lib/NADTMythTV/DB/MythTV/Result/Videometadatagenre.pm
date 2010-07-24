package NADTMythTV::DB::MythTV::Result::Videometadatagenre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::MythTV::Result::Videometadatagenre

=cut

__PACKAGE__->table("videometadatagenre");

=head1 ACCESSORS

=head2 idvideo

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 idgenre

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "idvideo",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "idgenre",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 12:52:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OQX0U4GXNuYIRT8IucuskQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
