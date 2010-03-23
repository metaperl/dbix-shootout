package Sakila::DBIx::Class::App;
use Moose;
extends qw(MooseX::App::Cmd);

has 'schema' => (is => 'rw');

sub BUILD {
  my ($self)=@_;


  use Sakila;
  use Sakila::DBH;

  my $schema = Sakila->connect(  sub { Sakila::DBH::dbh } );

  $self->schema($schema);
}

1;
