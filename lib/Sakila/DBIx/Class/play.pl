#!/usr/bin/perl

use strict; use warnings;

use lib "$ENV{SHOOTOUT}/lib";
use lib "$ENV{SAKILA}";
use lib "$ENV{SAKILA}/DBIx/Class";

use Sakila; 


use Sakila::DBH;

my $schema = Sakila->connect
  (
   sub { Sakila::DBH::dbh }
  );


# SELECT * FROM Actor
sub fetch_all {
    my $rs = $schema->resultset('Actor')->search;
    while (my $row = $rs->next) {
	use Data::Dumper;
	my %data = $row->get_columns;
	warn Dumper(\%data);

    }
}

# get a single row by primary key
# SELECT * FROM Actor WHERE actor_id=199
sub fetch_julia {

    my $row = $schema->resultset('Actor')->find(199);
    use Data::Dumper;
    my %data = $row->get_columns;
    warn Dumper(\%data);
}

# 1:1 relationship

sub pre_11 {

  my $rs = $schema->resultset('Staff')->search
      (
       { 'me.staff_id' => 2 },
       { prefetch => [ 'store' ] }
      );

    while (my $row = $rs->next) {
	warn $row->store->address_id ;
    }
}

# complex where

sub cw {

  my $where = { 'country.country' => { like => 'Ang%' } } ;
  my $attr  = { join => 'country' } ;

  my $rs = $schema->resultset('City')->search($where, $attr);

    while (my $row = $rs->next) {
	warn $row->store->address_id ;
    }
}



# 1:n relationship
# SELECT * FROM Customer c INNER JOIN Payment USING (customer_id) WHERE c.customer_id=599 
# DOES NOT WORK
sub pre_1n {

    my $rs = $schema->resultset('Customer')->search
      (
       { 'me.customer_id' => 599 },
       { prefetch => [ 'payments' ] }
      );

    while (my $row = $rs->next) {
	warn $row->payment_id ;
    }
}

#fetch_all;
#fetch_julia;
pre_11;
#prefetch;
