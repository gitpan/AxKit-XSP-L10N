# $Id: Makefile.PL 484 2005-03-25 03:58:41Z claco $
use ExtUtils::MakeMaker;
use strict;
use warnings FATAL => 'all';

eval 'use Apache::Test 1.16';
if (!$@) {
    require Apache::TestMM;
    Apache::TestMM->import(qw(test clean));

    ## for whatever reason, use AxKit causes issues
    ## use-ing A::A::Exception doesn't
    eval 'use Apache::AxKit::Exception';
    if (!$@) {
        push(@ARGV, '-defines', 'AXKIT');
    };

    Apache::TestMM::filter_args();
    Apache::TestMM::generate_script('t/TEST');
    Apache::TestMM::generate_script('t/SMOKE');
};

WriteMakefile(
    NAME            =>  'AxKit::XSP::L10N',
    VERSION_FROM    =>  'lib/AxKit/XSP/L10N.pm',
    ABSTRACT        =>  'String localization (L10N) taglib for AxKit',
    ($] >= 5.005 ?
        (AUTHOR     =>  'Christopher H. Laco <claco@chrislaco.com>') : ()),
    PREREQ_PM       =>  {
        'AxKit'             => 1.61,
        'Locale::Maketext'  => 1.08,
        'mod_perl'          => undef
    },
    (ExtUtils::MakeMaker->VERSION >= 6.11) ?
    (NO_META      => 1) : (),

    dist => {
        PREOP => 'pod2text lib/AxKit/XSP/L10N.pm > $(DISTVNAME)/README',
    },
    clean => { FILES => 'smoke-report-* t/TEST t/SMOKE t/logs' }
);
