use utf8;
package Biblio::Zotero::DB::Schema::Result::Creator;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Biblio::Zotero::DB::Schema::Result::Creator

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<creators>

=cut

__PACKAGE__->table("creators");

=head1 ACCESSORS

=head2 creatorid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 creatordataid

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 dateadded

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 datemodified

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 clientdatemodified

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 libraryid

  data_type: 'int'
  is_nullable: 1

=head2 key

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "creatorid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "creatordataid",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "dateadded",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "datemodified",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "clientdatemodified",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "libraryid",
  { data_type => "int", is_nullable => 1 },
  "key",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</creatorid>

=back

=cut

__PACKAGE__->set_primary_key("creatorid");

=head1 UNIQUE CONSTRAINTS

=head2 C<libraryid_key_unique>

=over 4

=item * L</libraryid>

=item * L</key>

=back

=cut

__PACKAGE__->add_unique_constraint("libraryid_key_unique", ["libraryid", "key"]);

=head1 RELATIONS

=head2 creatordataid

Type: belongs_to

Related object: L<Biblio::Zotero::DB::Schema::Result::CreatorData>

=cut

__PACKAGE__->belongs_to(
  "creatordataid",
  "Biblio::Zotero::DB::Schema::Result::CreatorData",
  { creatordataid => "creatordataid" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 item_creators

Type: has_many

Related object: L<Biblio::Zotero::DB::Schema::Result::ItemCreator>

=cut

__PACKAGE__->has_many(
  "item_creators",
  "Biblio::Zotero::DB::Schema::Result::ItemCreator",
  { "foreign.creatorid" => "self.creatorid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-02 23:02:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mwOJUSAgJ5GdL3mOqvtqKw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
