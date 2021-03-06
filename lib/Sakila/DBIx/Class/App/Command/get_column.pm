package Sakila::DBIx::Class::App::Command::get_column;
use Moose;
extends qw(MooseX::App::Cmd::Command);

use Data::Dump;

# http://search.cpan.org/~ribasushi/DBIx-Class-0.08120/lib/DBIx/Class/ResultSetColumn.pm
sub execute {
  my ($self, $opt, $args) = @_;

  my $where = {};
  my $attr = { order_by => 'first_name' };


  my @data = $self->app->schema->resultset('FilmText')->get_column('title')->all;

  warn Data::Dump::dump(\@data);

}

1;
