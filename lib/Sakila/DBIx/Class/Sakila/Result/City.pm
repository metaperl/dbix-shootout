package Sakila::Result::City;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::City

=cut

__PACKAGE__->table("city");

=head1 ACCESSORS

=head2 city_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa2b3a10)
  is_auto_increment: 1
  is_nullable: 0
  size: 5

=head2 city

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 50

=head2 country_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa2f91d8)
  is_foreign_key: 1
  is_nullable: 0
  size: 5

=head2 last_update

  data_type: TIMESTAMP
  default_value: CURRENT_TIMESTAMP
  is_nullable: 0
  size: 14

=cut

__PACKAGE__->add_columns(
  "city_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
    size => 5,
  },
  "city",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "country_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 5,
  },
  "last_update",
  {
    data_type => "TIMESTAMP",
    default_value => \"CURRENT_TIMESTAMP",
    is_nullable => 0,
    size => 14,
  },
);
__PACKAGE__->set_primary_key("city_id");

=head1 RELATIONS

=head2 addresses

Type: has_many

Related object: L<Sakila::Result::Address>

=cut

__PACKAGE__->has_many(
  "addresses",
  "Sakila::Result::Address",
  { "foreign.city_id" => "self.city_id" },
);

=head2 country

Type: belongs_to

Related object: L<Sakila::Result::Country>

=cut

__PACKAGE__->belongs_to(
  "country",
  "Sakila::Result::Country",
  { country_id => "country_id" },
  {},
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-22 17:34:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6WJQwZ6gzdPgSySYeTMBaA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
