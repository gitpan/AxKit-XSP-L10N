# $Id: fr.pm 484 2005-03-25 03:58:41Z claco $
package AxKit::XSP::L10N::Demo::fr;
use strict;
use warnings;
use vars qw(%Lexicon);

BEGIN {
    use base 'AxKit::XSP::L10N::Demo';
};

%Lexicon = (
    Language => 'French',
    'From [_1] To [_2]' => 'French [_1] To [_2]'
);

1;
__END__

=head1 NAME

AxKit::XSP::L10N Demo French Lexicon

=head1 AUTHOR

    Christopher H. Laco
    CPAN ID: CLACO
    claco@chrislaco.com
    http://today.icantfocus.com/blog/
