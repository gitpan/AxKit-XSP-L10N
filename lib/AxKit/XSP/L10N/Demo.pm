# $Id: Demo.pm 484 2005-03-25 03:58:41Z claco $
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

AxKit::XSP::L10N Demo L10N Module

=head1 AUTHOR

    Christopher H. Laco
    CPAN ID: CLACO
    claco@chrislaco.com
    http://today.icantfocus.com/blog/
