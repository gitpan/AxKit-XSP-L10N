# $Id: Demo.pm 486 2005-03-26 23:02:06Z claco $
package AxKit::XSP::L10N::Demo;
use strict;
use warnings;
use vars qw(%Lexicon);

BEGIN {
    use base 'Locale::Maketext';
};

%Lexicon = (
    _AUTO => 1
);

1;
__END__

=head1 NAME

AxKit::XSP::L10N::Demo - Demo L10N Module

=head1 SYNOPSIS

    use base 'AxKit::XSP::L10N::Demo';

    my $lh = __PACKAGE->get_handle();
    $lh->maketext('Submit');

=head1 DESCRIPTION

Simple demo L10N module to test Taglib external L10N module loading.

=head1 AUTHOR

    Christopher H. Laco
    CPAN ID: CLACO
    claco@chrislaco.com
    http://today.icantfocus.com/blog/
