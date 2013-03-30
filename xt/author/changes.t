use strict;
use warnings;
use utf8;
use Test::More;

eval 'use Test::CPAN::Changes';
plan skip_all => 'Test::CPAN::Changes not installed; skipping' if $@;

changes_ok();
