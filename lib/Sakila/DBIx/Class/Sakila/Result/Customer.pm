package Sakila::Result::Customer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::Customer

=cut

__PACKAGE__->table("customer");

=head1 ACCESSORS

=head2 customer_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa3bc748)
  is_auto_increment: 1
  is_nullable: 0
  size: 5

=head2 store_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa3b8a78)
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 first_name

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 45

=head2 last_name

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 45

=head2 email

  data_type: VARCHAR
  default_value: undef
  is_nullable: 1
  size: 50

=head2 address_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa3b85a8)
  is_foreign_key: 1
  is_nullable: 0
  size: 5

=head2 active

  data_type: TINYINT
  default_value: 1
  is_nullable: 0
  size: 1

=head2 create_date

  data_type: DATETIME
  default_value: undef
  is_nullable: 0
  size: 19

=head2 last_update

  data_type: TIMESTAMP
  default_value: CURRENT_TIMESTAMP
  is_nullable: 0
  size: 14

=cut

__PACKAGE__->add_columns(
  "customer_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
    size => 5,
  },
  "store_id",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "first_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 45,
  },
  "last_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 45,
  },
  "email",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "address_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 5,
  },
  "active",
  { data_type => "TINYINT", default_value => 1, is_nullable => 0, size => 1 },
  "create_date",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 0,
    size => 19,
  },
  "last_update",
  {
    data_type => "TIMESTAMP",
    default_value => \"CURRENT_TIMESTAMP",
    is_nullable => 0,
    size => 14,
  },
);
__PACKAGE__->set_primary_key("customer_id");

=head1 RELATIONS

=head2 address

Type: belongs_to

Related object: L<Sakila::Result::Address>

=cut

__PACKAGE__->belongs_to(
  "address",
  "Sakila::Result::Address",
  { address_id => "address_id" },
  {},
);

=head2 store

Type: belongs_to

Related object: L<Sakila::Result::Store>

=cut

__PACKAGE__->belongs_to(
  "store",
  "Sakila::Result::Store",
  { store_id => "store_id" },
  {},
);

=head2 payments

Type: has_many

Related object: L<Sakila::Result::Payment>

=cut

__PACKAGE__->has_many(
  "payments",
  "Sakila::Result::Payment",
  { "foreign.customer_id" => "self.customer_id" },
);

=head2 rentals

Type: has_many

Related object: L<Sakila::Result::Rental>

=cut

__PACKAGE__->has_many(
  "rentals",
  "Sakila::Result::Rental",
  { "foreign.customer_id" => "self.customer_id" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-17 16:30:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sFnv7KFOU/1a2sZQkncSwA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
