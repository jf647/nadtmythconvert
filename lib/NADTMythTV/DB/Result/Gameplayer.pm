package NADTMythTV::DB::Result::Gameplayer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Gameplayer

=cut

__PACKAGE__->table("gameplayers");

=head1 ACCESSORS

=head2 gameplayerid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 playername

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 workingpath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 rompath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 screenshots

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 commandline

  data_type: 'text'
  is_nullable: 0

=head2 gametype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 extensions

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 spandisks

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "gameplayerid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "playername",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "workingpath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "rompath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "screenshots",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "commandline",
  { data_type => "text", is_nullable => 0 },
  "gametype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "extensions",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "spandisks",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("gameplayerid");
__PACKAGE__->add_unique_constraint("playername", ["playername"]);


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uoY6wAXic1oTdfWyFpsAwA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
