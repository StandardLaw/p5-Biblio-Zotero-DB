use utf8;
package Biblio::Zotero::DB::Schema::Result::ItemTag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Biblio::Zotero::DB::Schema::Result::ItemTag

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<itemTags>

=cut

__PACKAGE__->table("itemTags");

=head1 ACCESSORS

=head2 itemid

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 tagid

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "itemid",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "tagid",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemid>

=item * L</tagid>

=back

=cut

__PACKAGE__->set_primary_key("itemid", "tagid");

=head1 RELATIONS

=head2 itemid

Type: belongs_to

Related object: L<Biblio::Zotero::DB::Schema::Result::Item>

=cut

__PACKAGE__->belongs_to(
  "itemid",
  "Biblio::Zotero::DB::Schema::Result::Item",
  { itemid => "itemid" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 tagid

Type: belongs_to

Related object: L<Biblio::Zotero::DB::Schema::Result::Tag>

=cut

__PACKAGE__->belongs_to(
  "tagid",
  "Biblio::Zotero::DB::Schema::Result::Tag",
  { tagid => "tagid" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-02 23:02:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xc3btUyiE4Uuz0xCCZZE1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
