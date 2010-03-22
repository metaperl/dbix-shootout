package Sakila::Result::Rental;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::Rental

=cut

__PACKAGE__->table("rental");

=head1 ACCESSORS

=head2 rental_id

  data_type: INT
  default_value: undef
  is_auto_increment: 1
  is_nullable: 0
  size: 11

=head2 rental_date

  data_type: DATETIME
  default_value: undef
  is_nullable: 0
  size: 19

=head2 inventory_id

  data_type: MEDIUMINT
  default_value: undef
  extra: HASH(0xa3d10f0)
  is_foreign_key: 1
  is_nullable: 0
  size: 8

=head2 customer_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa3c6aa0)
  is_foreign_key: 1
  is_nullable: 0
  size: 5

=head2 return_date

  data_type: DATETIME
  default_value: undef
  is_nullable: 1
  size: 19

=head2 staff_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa3c6550)
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
  "rental_id",
  {
    data_type => "INT",
    default_value => undef,
    is_auto_increment => 1,
    is_nullable => 0,
    size => 11,
  },
  "rental_date",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 0,
    size => 19,
  },
  "inventory_id",
  {
    data_type => "MEDIUMINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 8,
  },
  "customer_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 5,
  },
  "return_date",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "staff_id",
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
__PACKAGE__->set_primary_key("rental_id");
__PACKAGE__->add_unique_constraint("rental_date", ["rental_date", "inventory_id", "customer_id"]);

=head1 RELATIONS

=head2 payments

Type: has_many

Related object: L<Sakila::Result::Payment>

=cut

__PACKAGE__->has_many(
  "payments",
  "Sakila::Result::Payment",
  { "foreign.rental_id" => "self.rental_id" },
);

=head2 staff

Type: belongs_to

Related object: L<Sakila::Result::Staff>

=cut

__PACKAGE__->belongs_to(
  "staff",
  "Sakila::Result::Staff",
  { staff_id => "staff_id" },
  {},
);

=head2 inventory

Type: belongs_to

Related object: L<Sakila::Result::Inventory>

=cut

__PACKAGE__->belongs_to(
  "inventory",
  "Sakila::Result::Inventory",
  { inventory_id => "inventory_id" },
  {},
);

=head2 customer

Type: belongs_to

Related object: L<Sakila::Result::Customer>

=cut

__PACKAGE__->belongs_to(
  "customer",
  "Sakila::Result::Customer",
  { customer_id => "customer_id" },
  {},
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-17 16:30:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uP4h+ytkXbNkI70t3wYfXA


# You can replace this text with custom content, and it will be preserved on regeneration
1;