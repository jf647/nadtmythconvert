package NADTMythTV::DB::Result::MusicStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::MusicStat

=cut

__PACKAGE__->table("music_stats");

=head1 ACCESSORS

=head2 num_artists

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 num_albums

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 num_songs

  data_type: 'mediumint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 num_genres

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 total_time

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 12

=head2 total_size

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "num_artists",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "num_albums",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "num_songs",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "num_genres",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "total_time",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 12 },
  "total_size",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 10 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ybpslcv+ze21H3W3IRHHwQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
