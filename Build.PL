#!/usr/bin/perl -w

use strict;
use Module::Build;

my $build = Module::Build->new(
    license             => 'perl',
    module_name         => 'SQL::Filter',
    dist_version	=> '0.014',
    requires            => {
        'perl'              => 5.006,
	'Data::Visitor'     => '0.25',
	'SQL::Abstract'     => '1.56',
	'SQL::Abstract::Limit'     => '0.141',
    },
    build_requires      => {
        'Test::More'        => 0,
	'YAML::Syck'	    => 0,
    },
    create_makefile_pl  => 'traditional',
    dist_abstract       => 'SQL::Filter -- create filtering queries from hash of rules and hash of data',
);

$build->create_build_script;
