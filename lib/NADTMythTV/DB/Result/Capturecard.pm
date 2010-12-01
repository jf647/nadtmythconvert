package NADTMythTV::DB::Result::Capturecard;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Capturecard

=cut

__PACKAGE__->table("capturecard");

=head1 ACCESSORS

=head2 cardid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 videodevice

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 audiodevice

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 vbidevice

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 cardtype

  data_type: 'varchar'
  default_value: 'V4L'
  is_nullable: 1
  size: 32

=head2 defaultinput

  data_type: 'varchar'
  default_value: 'Television'
  is_nullable: 1
  size: 32

=head2 audioratelimit

  data_type: 'integer'
  is_nullable: 1

=head2 hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 dvb_swfilter

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 dvb_sat_type

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dvb_wait_for_seqstart

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 skipbtaudio

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 dvb_on_demand

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 dvb_diseqc_type

  data_type: 'smallint'
  is_nullable: 1

=head2 firewire_speed

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 firewire_model

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 firewire_connection

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 signal_timeout

  data_type: 'integer'
  default_value: 1000
  is_nullable: 0

=head2 channel_timeout

  data_type: 'integer'
  default_value: 3000
  is_nullable: 0

=head2 dvb_tuning_delay

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 contrast

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 brightness

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 colour

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 hue

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 diseqcid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 dvb_eitscan

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cardid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "videodevice",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "audiodevice",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "vbidevice",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "cardtype",
  {
    data_type => "varchar",
    default_value => "V4L",
    is_nullable => 1,
    size => 32,
  },
  "defaultinput",
  {
    data_type => "varchar",
    default_value => "Television",
    is_nullable => 1,
    size => 32,
  },
  "audioratelimit",
  { data_type => "integer", is_nullable => 1 },
  "hostname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "dvb_swfilter",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "dvb_sat_type",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dvb_wait_for_seqstart",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "skipbtaudio",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "dvb_on_demand",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "dvb_diseqc_type",
  { data_type => "smallint", is_nullable => 1 },
  "firewire_speed",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "firewire_model",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "firewire_connection",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "signal_timeout",
  { data_type => "integer", default_value => 1000, is_nullable => 0 },
  "channel_timeout",
  { data_type => "integer", default_value => 3000, is_nullable => 0 },
  "dvb_tuning_delay",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "contrast",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "brightness",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "colour",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "hue",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "diseqcid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "dvb_eitscan",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("cardid");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-12-01 16:49:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oecCynYbF4AZYRhf1l+IWw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
