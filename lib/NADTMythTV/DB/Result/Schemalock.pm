package NADTMythTV::DB::Result::Schemalock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Schemalock

=cut

__PACKAGE__->table("schemalock");

=head1 ACCESSORS

=head2 schemalock

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns("schemalock", { data_type => "integer", is_nullable => 1 });


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Wuzp46UL6mw0qJ9gBbW8oQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
