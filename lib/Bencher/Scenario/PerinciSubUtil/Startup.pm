package Bencher::Scenario::PerinciSubUtil::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of Perinci::Sub::Util',
    modules => {
        'Perinci::Sub::Util' => {version=>'0.46'},
    },
    module_startup => 1,
    participants => [
        {
            module => 'Perinci::Sub::Util',
        },
    ],
};

1;
# ABSTRACT:
