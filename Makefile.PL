use inc::Module::Install;

name     'Data-ICal-RDF';
all_from 'lib/Data/ICal/RDF.pm';
author   q{Dorian Taylor <dorian@cpan.org>};
license  'apache';

build_requires 'Test::More';

auto_install;

WriteAll;

