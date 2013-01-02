package Nopaste::Web;
use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;
  my $r = $self->routes;
  $r->get('/')->to('example#welcome');
	$r->post('/')->to('example#welcome'); #デフォルトより追加
}

1;
