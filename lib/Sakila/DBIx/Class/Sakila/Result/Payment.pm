package Sakila::Result::Payment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::Payment

=cut

__PACKAGE__->table("payment");

=head1 ACCESSORS

=head2 payment_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa3cac18)
  is_auto_increment: 1
  is_nullable: 0
  size: 5

=head2 customer_id

  data_type: SMALLINT
  default_value: undef
  extra: HASH(0xa3cb6b8)
  is_foreign_key: 1
  is_nullable: 0
  size: 5

=head2 staff_id

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa3c1af8)
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 rental_id

  data_type: INT
  default_value: undef
  is_foreign_key: 1
  is_nullable: 1
  size: 11

=head2 amount

  data_type: DECIMAL
  default_value: undef
  is_nullable: 0
  size: 5

=head2 payment_date

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
  "payment_id",
  {
    data_type => "SMALLINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
    size => 5,
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
  "staff_id",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "rental_id",
  {
    data_type => "INT",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 1,
    size => 11,
  },
  "amount",
  { data_type => "DECIMAL", default_value => undef, is_nullable => 0, size => 5 },
  "payment_date",
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
__PACKAGE__->set_primary_key("payment_id");

=head1 RELATIONS

=head2 rental

Type: belongs_to

Related object: L<Sakila::Result::Rental>

=cut

__PACKAGE__->belongs_to(
  "rental",
  "Sakila::Result::Rental",
  { rental_id => "rental_id" },
  { join_type => "LEFT" },
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


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-17 16:30:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rQyA4qnOH9ZbBDpAErN/hg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
