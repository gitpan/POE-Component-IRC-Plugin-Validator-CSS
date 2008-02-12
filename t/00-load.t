#!/usr/bin/env perl

use Test::More tests => 5;

BEGIN {
    use_ok('Carp');
    use_ok('POE::Component::WebService::Validator::CSS::W3C');
    use_ok('POE::Component::IRC::Plugin');
    use_ok('LWP::UserAgent');
	use_ok( 'POE::Component::IRC::Plugin::Validator::CSS' );
}

diag( "Testing POE::Component::IRC::Plugin::Validator::CSS $POE::Component::IRC::Plugin::Validator::CSS::VERSION, Perl $], $^X" );
