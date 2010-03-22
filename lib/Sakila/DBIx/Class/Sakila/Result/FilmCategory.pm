package Sakila::Result::FilmCategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::FilmCategory

=cut

__PACKAGE__->table("film_category");

=head1 ACCESSORS

=head2 film_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa2ffbd8)
  is_foreign_key: 1
  is_nullable: 0
  size: 5

=head2 category_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa2f0ab8)
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 last_update

  data_type: TIMESTAMP
  default_value: CURRENT_TIMESTAMP
  is_nullable: 0
  size: 14

=cut

__PACKAGE__->add_columns(
  "film_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 5,
  },
  "category_id",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "last_update",
  {
    data_type => "TIMESTAMP",
    default_value => \"CURRENT_TIMESTAMP",
    is_nullable => 0,
    size => 14,
  },
);
__PACKAGE__->set_primary_key("film_id", "category_id");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Sakila::Result::Category>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Sakila::Result::Category",
  { category_id => "category_id" },
  {},
);

=head2 film

Type: belongs_to

Related object: L<Sakila::Result::Film>

=cut

__PACKAGE__->belongs_to("film", "Sakila::Result::Film", { film_id => "film_id" }, {});


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-22 17:34:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ryqS1TbUh3k8AkEihlwNYw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
