package NADTMythTV::DB::Result::Videotype;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Videotype

=cut

__PACKAGE__->table("videotypes");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 extension

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 playcommand

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 f_ignore

  data_type: 'tinyint'
  is_nullable: 1

=head2 use_default

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "intid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "extension",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "playcommand",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "f_ignore",
  { data_type => "tinyint", is_nullable => 1 },
  "use_default",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a3CPwEHeRJuUTw8RxynGag


# You can replace this text with custom content, and it will be preserved on regeneration
1;
