package Bencher::Scenario::PerinciSubUtil::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of Perinci::Sub::Util',
    module_startup => 1,
    participants => [
        {
            module => 'Perinci::Sub::Util',
        },
    ],
};

1;
# ABSTRACT:
