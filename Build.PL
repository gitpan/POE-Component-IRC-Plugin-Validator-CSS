use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::IRC::Plugin::Validator::CSS',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/IRC/Plugin/Validator/CSS.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                                            => 1.04,
        'POE::Component::WebService::Validator::CSS::W3C' => 0.02,
        'POE::Component::IRC::Plugin'                     => 0.09,
        'LWP::UserAgent'                                  => 2.036,
    },
    add_to_cleanup      => [ 'POE-Component-IRC-Plugin-Validator-CSS-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
