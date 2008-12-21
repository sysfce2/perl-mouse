#!/usr/bin/env perl -pl
use strict;
use warnings;

BEGIN {
    @ARGV = glob('t/*.t t/*/*.t');
    $^I = '';
}

s/Mouse/Moose/g;
s/Moose::(load_class|is_class_loaded)/Class::MOP::$1/g;

