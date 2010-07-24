package NADTMythTV::DB::Result::Inputgroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Inputgroup

=cut

__PACKAGE__->table("inputgroup");

=head1 ACCESSORS

=head2 cardinputid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 inputgroupid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 inputgroupname

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "cardinputid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "inputgroupid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "inputgroupname",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VDoaXRLWRFyTvwzh0YdxUQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
