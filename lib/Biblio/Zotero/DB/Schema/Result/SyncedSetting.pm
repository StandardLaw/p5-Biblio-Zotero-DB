use utf8;
package Biblio::Zotero::DB::Schema::Result::SyncedSetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Biblio::Zotero::DB::Schema::Result::SyncedSetting

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<syncedSettings>

=cut

__PACKAGE__->table("syncedSettings");

=head1 ACCESSORS

=head2 setting

  data_type: 'text'
  is_nullable: 0

=head2 libraryid

  data_type: 'int'
  is_nullable: 0

=head2 value

  data_type: (empty string)
  is_nullable: 0

=head2 version

  data_type: 'int'
  default_value: 0
  is_nullable: 0

=head2 synced

  data_type: 'int'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "setting",
  { data_type => "text", is_nullable => 0 },
  "libraryid",
  { data_type => "int", is_nullable => 0 },
  "value",
  { data_type => "", is_nullable => 0 },
  "version",
  { data_type => "int", default_value => 0, is_nullable => 0 },
  "synced",
  { data_type => "int", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</setting>

=item * L</libraryid>

=back

=cut

__PACKAGE__->set_primary_key("setting", "libraryid");


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-02 23:02:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EMwSimKYNU3zBV08SE7n/w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
