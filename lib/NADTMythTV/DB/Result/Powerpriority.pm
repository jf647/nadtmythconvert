package NADTMythTV::DB::Result::Powerpriority;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Powerpriority

=cut

__PACKAGE__->table("powerpriority");

=head1 ACCESSORS

=head2 priorityname

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 recpriority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 selectclause

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "priorityname",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "recpriority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "selectclause",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("priorityname");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EQRD/cYS06YowgNfp3dwoA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
