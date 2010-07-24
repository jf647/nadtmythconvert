package NADTMythTV::DB::Result::ChannelscanChannel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::ChannelscanChannel

=cut

__PACKAGE__->table("channelscan_channel");

=head1 ACCESSORS

=head2 transportid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 scanid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 mplex_id

  data_type: 'smallint'
  is_nullable: 0

=head2 source_id

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 channel_id

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 callsign

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 service_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 chan_num

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 service_id

  data_type: 'mediumint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 atsc_major_channel

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 atsc_minor_channel

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 use_on_air_guide

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 hidden

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 hidden_in_guide

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 freqid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 icon

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 tvformat

  data_type: 'varchar'
  default_value: 'Default'
  is_nullable: 0
  size: 10

=head2 xmltvid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 pat_tsid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 vct_tsid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 vct_chan_tsid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 sdt_tsid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 orig_netid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 netid

  data_type: 'integer'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 si_standard

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 in_channels_conf

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 in_pat

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 in_pmt

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 in_vct

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 in_nit

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 in_sdt

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 is_encrypted

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 is_data_service

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 is_audio_service

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 is_opencable

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 could_be_opencable

  data_type: 'tinyint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 decryption_status

  data_type: 'smallint'
  default_value: 0
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 default_authority

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "transportid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "scanid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "mplex_id",
  { data_type => "smallint", is_nullable => 0 },
  "source_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "channel_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "callsign",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "service_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "chan_num",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "service_id",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "atsc_major_channel",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "atsc_minor_channel",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "use_on_air_guide",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "hidden",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "hidden_in_guide",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "freqid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "icon",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "tvformat",
  {
    data_type => "varchar",
    default_value => "Default",
    is_nullable => 0,
    size => 10,
  },
  "xmltvid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "pat_tsid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "vct_tsid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "vct_chan_tsid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sdt_tsid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "orig_netid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "netid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "si_standard",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "in_channels_conf",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "in_pat",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "in_pmt",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "in_vct",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "in_nit",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "in_sdt",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "is_encrypted",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "is_data_service",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "is_audio_service",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "is_opencable",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "could_be_opencable",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "decryption_status",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "default_authority",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:G2Rxp/WcKWxvUqawuObbkw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
