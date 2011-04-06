use strict;use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Algorithm::BMI',
    AUTHOR        => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM  => 'lib/Algorithm/BMI.pm',
    ABSTRACT_FROM => 'lib/Algorithm/BMI.pm',
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'Algorithm-BMI-*' },
    PREREQ_PM     => {
        'Test::More' => 0,
        'Readonly'   => 0,
    },
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
);