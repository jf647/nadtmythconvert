package NADTMythTV::DB::Result::Dvdtranscode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Dvdtranscode

=cut

__PACKAGE__->table("dvdtranscode");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 input

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 sync_mode

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 1

=head2 use_yv12

  data_type: 'tinyint'
  is_nullable: 1

=head2 cliptop

  data_type: 'integer'
  is_nullable: 1

=head2 clipbottom

  data_type: 'integer'
  is_nullable: 1

=head2 clipleft

  data_type: 'integer'
  is_nullable: 1

=head2 clipright

  data_type: 'integer'
  is_nullable: 1

=head2 f_resize_h

  data_type: 'integer'
  is_nullable: 1

=head2 f_resize_w

  data_type: 'integer'
  is_nullable: 1

=head2 hq_resize_h

  data_type: 'integer'
  is_nullable: 1

=head2 hq_resize_w

  data_type: 'integer'
  is_nullable: 1

=head2 grow_h

  data_type: 'integer'
  is_nullable: 1

=head2 grow_w

  data_type: 'integer'
  is_nullable: 1

=head2 clip2top

  data_type: 'integer'
  is_nullable: 1

=head2 clip2bottom

  data_type: 'integer'
  is_nullable: 1

=head2 clip2left

  data_type: 'integer'
  is_nullable: 1

=head2 clip2right

  data_type: 'integer'
  is_nullable: 1

=head2 codec

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 codec_param

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 bitrate

  data_type: 'integer'
  is_nullable: 1

=head2 a_sample_r

  data_type: 'integer'
  is_nullable: 1

=head2 a_bitrate

  data_type: 'integer'
  is_nullable: 1

=head2 two_pass

  data_type: 'tinyint'
  is_nullable: 1

=head2 tc_param

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "intid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "input",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "sync_mode",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "use_yv12",
  { data_type => "tinyint", is_nullable => 1 },
  "cliptop",
  { data_type => "integer", is_nullable => 1 },
  "clipbottom",
  { data_type => "integer", is_nullable => 1 },
  "clipleft",
  { data_type => "integer", is_nullable => 1 },
  "clipright",
  { data_type => "integer", is_nullable => 1 },
  "f_resize_h",
  { data_type => "integer", is_nullable => 1 },
  "f_resize_w",
  { data_type => "integer", is_nullable => 1 },
  "hq_resize_h",
  { data_type => "integer", is_nullable => 1 },
  "hq_resize_w",
  { data_type => "integer", is_nullable => 1 },
  "grow_h",
  { data_type => "integer", is_nullable => 1 },
  "grow_w",
  { data_type => "integer", is_nullable => 1 },
  "clip2top",
  { data_type => "integer", is_nullable => 1 },
  "clip2bottom",
  { data_type => "integer", is_nullable => 1 },
  "clip2left",
  { data_type => "integer", is_nullable => 1 },
  "clip2right",
  { data_type => "integer", is_nullable => 1 },
  "codec",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "codec_param",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "bitrate",
  { data_type => "integer", is_nullable => 1 },
  "a_sample_r",
  { data_type => "integer", is_nullable => 1 },
  "a_bitrate",
  { data_type => "integer", is_nullable => 1 },
  "two_pass",
  { data_type => "tinyint", is_nullable => 1 },
  "tc_param",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);
__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AYe+5dchB3MTGzGAU9a2NQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
