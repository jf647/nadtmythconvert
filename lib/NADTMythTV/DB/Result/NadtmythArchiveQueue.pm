package NADTMythTV::DB::Result::NadtmythArchiveQueue;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

NADTMythTV::DB::Result::NadtmythArchiveQueue

=cut

__PACKAGE__->table("nadtmyth_archive_queue");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 orig_chanid

  data_type: 'integer'
  is_nullable: 0

=head2 orig_starttime

  data_type: 'datetime'
  is_nullable: 0

=head2 request_date

  data_type: 'datetime'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "orig_chanid",
  { data_type => "integer", is_nullable => 0 },
  "orig_starttime",
  { data_type => "datetime", is_nullable => 0 },
  "request_date",
  { data_type => "datetime", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint(
  "nadtmyth_archive_queue_idx1",
  ["orig_chanid", "orig_starttime"],
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-08-08 09:11:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZqO2sgo7hKjy0Bi/lSh3rA

__PACKAGE__->belongs_to( recorded => 'NADTMythTV::DB::Result::Recorded', {
  'foreign.chanid' => 'self.orig_chanid',
  'foreign.starttime' => 'self.orig_starttime',
} );

# You can replace this text with custom content, and it will be preserved on regeneration
1;
