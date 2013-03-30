package Lingua::Words::Offensive;

use v5.6;
use utf8;
use Moo;
use Lingua::Words::Offensive::Wiktionary;

our $VERSION = '0.00_1';

my %sources = (
    wiktionary => 'Wiktionary',
);

has source => (
    is      => 'rw',
    isa     => sub { die "Invalid source '$_[0]'" unless $_[0] },
    coerce  => sub { $sources{ lc $_[0] } },
    default => sub { 'Wiktionary' },
);

sub words {
    my ($self, $language) = @_;
    my $module = __PACKAGE__ . '::' . $self->source;
    return $module->words($language);
}

1;

__END__

=encoding UTF-8

=head1 NAME

Lingua::Words::Offensive - ...

=head1 VERSION

This document describes Lingua::Words::Offensive v0.00_1.

=head1 SYNOPSIS

    use Lingua::Words::Offensive;

    ...

=head1 DESCRIPTION

...

=head1 SEE ALSO

=over

=item * ...

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
