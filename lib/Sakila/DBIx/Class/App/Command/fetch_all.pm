package Sakila::DBIx::Class::App::Command::fetch_all;
use Moose;
extends qw(MooseX::App::Cmd::Command);

sub execute {
  my ($self, $opt, $args) = @_;

  my $rs = $self->app->schema->resultset('Actor')->search;

  while (my $row = $rs->next) {
    use Data::Dumper;
    my %data = $row->get_columns;
    warn Dumper(\%data);
    
  }
}

1;
