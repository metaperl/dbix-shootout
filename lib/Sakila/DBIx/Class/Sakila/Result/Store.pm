package Sakila::Result::Store;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::Store

=cut

__PACKAGE__->table("store");

=head1 ACCESSORS

=head2 store_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa3049b8)
  is_auto_increment: 1
  is_nullable: 0
  size: 3

=head2 manager_staff_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa30b510)
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 address_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa2ec6e8)
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
  "store_id",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
    size => 3,
  },
  "manager_staff_id",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
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
  "last_update",
  {
    data_type => "TIMESTAMP",
    default_value => \"CURRENT_TIMESTAMP",
    is_nullable => 0,
    size => 14,
  },
);
__PACKAGE__->set_primary_key("store_id");
__PACKAGE__->add_unique_constraint("idx_unique_manager", ["manager_staff_id"]);

=head1 RELATIONS

=head2 customers

Type: has_many

Related object: L<Sakila::Result::Customer>

=cut

__PACKAGE__->has_many(
  "customers",
  "Sakila::Result::Customer",
  { "foreign.store_id" => "self.store_id" },
);

=head2 inventories

Type: has_many

Related object: L<Sakila::Result::Inventory>

=cut

__PACKAGE__->has_many(
  "inventories",
  "Sakila::Result::Inventory",
  { "foreign.store_id" => "self.store_id" },
);

=head2 staffs

Type: has_many

Related object: L<Sakila::Result::Staff>

=cut

__PACKAGE__->has_many(
  "staffs",
  "Sakila::Result::Staff",
  { "foreign.store_id" => "self.store_id" },
);

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

=head2 manager_staff

Type: belongs_to

Related object: L<Sakila::Result::Staff>

=cut

__PACKAGE__->belongs_to(
  "manager_staff",
  "Sakila::Result::Staff",
  { staff_id => "manager_staff_id" },
  {},
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-22 17:34:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nBCvtKIaEO5Yjz0kF17deA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
