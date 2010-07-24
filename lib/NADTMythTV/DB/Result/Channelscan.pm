package NADTMythTV::DB::Result::Channelscan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::Channelscan

=cut

__PACKAGE__->table("channelscan");

=head1 ACCESSORS

=head2 scanid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_auto_increment: 1
  is_nullable: 0

=head2 cardid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 sourceid

  data_type: 'integer'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 processed

  data_type: 'tinyint'
  extra: {
  unsigned => 1
}

  is_nullable: 0

=head2 scandate

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "scanid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cardid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "sourceid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "processed",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "scandate",
  { data_type => "datetime", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("scanid");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-07-24 15:02:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jCfFRzjXOHOFqrPaJ/if2w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
