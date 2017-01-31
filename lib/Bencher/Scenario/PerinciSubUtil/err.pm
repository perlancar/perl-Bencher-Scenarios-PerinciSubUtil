package Bencher::Scenario::PerinciSubUtil::err;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark err()',
    participants => [
        {
            name => 'err',
            module => 'Perinci::Sub::Util',
            fcall_template => 'Perinci::Sub::Util::err(@{<args>})',
        },
    ],
    datasets => [
        {name=>'err()', args => {args=>[]}},
        {name=>'err(404)', args => {args=>[404]}},
        {name=>'err(404,"message")', args => {args=>[404, "message"]}},
        {name=>'err(404,"message",[500,"prev"])', args => {args=>[404, "message", [500,"prev"]]}},
    ],
};

1;
# ABSTRACT:
