package Bencher::Scenario::PerinciSubUtil::call_with_its_args;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub main::foo {}

our $scenario = {
    summary => 'Benchmark call_with_its_args() vs direct call',
    participants => [
        {
            name => 'direct',
            code_template => 'main::foo(a1=>1, a2=>2, a3=>3)',
        },
        {
            name => 'call_with_its_args',
            module => 'Perinci::Sub::Util::Args',
            code_template => 'Perinci::Sub::Util::Args::call_with_its_args("main::foo", {a1=>1, a2=>2, a3=>3, a6=>4})',
        },
    ],
    before_bench => sub {
        my %args = @_;
        $main::SPEC{foo} = {
            v => 1.1,
            args => {
                a1 => {tags=>["t1","t2"]},
                a2 => {tags=>["t2","t3"]},
                a3 => {tags=>["t3","t4"]},
                a4 => {},
                a5 => {},
            },
        };
    },
    after_bench => sub {
        undef $main::SPEC{foo};
    },
};

1;
# ABSTRACT:
