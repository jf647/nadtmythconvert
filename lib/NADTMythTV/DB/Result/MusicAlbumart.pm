package NADTMythTV::DB::Result::MusicAlbumart;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicAlbumart

=cut

__PACKAGE__->table("music_albumart");

=head1 ACCESSORS

=head2 albumart_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 directory_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 imagetype

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 song_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 embedded

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "albumart_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "filename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "directory_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "imagetype",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "song_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "embedded",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("albumart_id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bVFsql+ch9xiUvrdNwfApQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
