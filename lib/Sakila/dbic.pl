#!/usr/bin/perl

use lib "$ENV{SHOOTOUT}/lib";
use lib "$ENV{SAKILA}";
use lib "$ENV{SAKILA}/DBIx/Class";


use Sakila::DBIx::Class::App;
my $app = Sakila::DBIx::Class::App->new;

$app->run;
