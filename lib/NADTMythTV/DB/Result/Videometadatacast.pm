package NADTMythTV::DB::Result::Videometadatacast;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videometadatacast

=cut

__PACKAGE__->table("videometadatacast");

=head1 ACCESSORS

=head2 idvideo

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 idcast

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "idvideo",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "idcast",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EZDpZ8O8gVNzVSUWtlq6Dw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
