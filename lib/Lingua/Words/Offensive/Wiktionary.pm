package Lingua::Words::Offensive::Wiktionary;

use v5.6;
use utf8;
use strict;
use warnings;
use Module::Runtime qw( use_module );

our $VERSION = '0.00_1';

my %is_language = map { $_ => 1 } qw( EO );

sub words {
    my ($self, $language) = @_;
    return unless $language;
    $language = uc $language;
    return unless $is_language{$language};
    my $module = use_module(__PACKAGE__ . "::$language");
    return $module->words;
}

1;
