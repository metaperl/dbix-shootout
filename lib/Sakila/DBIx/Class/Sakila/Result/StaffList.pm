package Sakila::Result::StaffList;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Sakila::Result::StaffList

=cut

__PACKAGE__->table("staff_list");

=head1 ACCESSORS

=head2 id

  data_type: TINYINT
  default_value: 0
  extra: HASH(0xa30c0c0)
  is_nullable: 0
  size: 3

=head2 name

  data_type: VARCHAR
  default_value: (empty string)
  is_nullable: 0
  size: 91

=head2 address

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 50

=head2 zip code

  data_type: VARCHAR
  default_value: undef
  is_nullable: 1
  size: 10

=head2 phone

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 20

=head2 city

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 50

=head2 country

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 50

=head2 sid

  data_type: TINYINT
  default_value: undef
  extra: HASH(0xa30b600)
  is_nullable: 0
  size: 3

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "TINYINT",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
    size => 3,
  },
  "name",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 91 },
  "address",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "zip code",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 10,
  },
  "phone",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 20,
  },
  "city",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "country",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "sid",
  {
    data_type => "TINYINT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_nullable => 0,
    size => 3,
  },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-03-22 17:34:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3mEtOWF3yk80++x4vAHkaQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
