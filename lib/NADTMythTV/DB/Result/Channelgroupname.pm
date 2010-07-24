package NADTMythTV::DB::Result::Channelgroupname;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Channelgroupname

=cut

__PACKAGE__->table("channelgroupnames");

=head1 ACCESSORS

=head2 grpid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "grpid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 64 },
);
__PACKAGE__->set_primary_key("grpid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GM6RV4uZEIkOaARJvhGLCg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
