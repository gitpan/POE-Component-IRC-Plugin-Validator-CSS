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
    configure_requires => { 'Module::Build' => 0.40 },
    requires => {
        'Carp'                                            => 0,
        'POE::Component::WebService::Validator::CSS::W3C' => 0.02,
        'POE::Component::IRC::Plugin'                     => 0,
        'LWP::UserAgent'                                  => 0,
        'perl'                                            => '5.006',
        'POE'                                             => 0,
    },
    add_to_cleanup      => [ 'POE-Component-IRC-Plugin-Validator-CSS-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
