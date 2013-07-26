use utf8;
package Biblio::Zotero::DB::Schema::Result::StorageDeleteLog;
{
  $Biblio::Zotero::DB::Schema::Result::StorageDeleteLog::VERSION = '0.001';
}

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE


use strict;
use warnings;

use base 'DBIx::Class::Core';


__PACKAGE__->table("storageDeleteLog");


__PACKAGE__->add_columns(
  "libraryid",
  { data_type => "int", is_nullable => 0 },
  "key",
  { data_type => "text", is_nullable => 0 },
  "timestamp",
  { data_type => "int", is_nullable => 0 },
);


__PACKAGE__->set_primary_key("libraryid", "key");


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-02 23:02:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3C5gfd4sZ5Ul0QU4FZ8i0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

__END__

=pod

=head1 NAME

Biblio::Zotero::DB::Schema::Result::StorageDeleteLog

=head1 VERSION

version 0.001

=head1 NAME

Biblio::Zotero::DB::Schema::Result::StorageDeleteLog

=head1 TABLE: C<storageDeleteLog>

=head1 ACCESSORS

=head2 libraryid

  data_type: 'int'
  is_nullable: 0

=head2 key

  data_type: 'text'
  is_nullable: 0

=head2 timestamp

  data_type: 'int'
  is_nullable: 0

=head1 PRIMARY KEY

=over 4

=item * L</libraryid>

=item * L</key>

=back

=head1 AUTHOR

Zakariyya Mughal <zmughal@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Zakariyya Mughal.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
