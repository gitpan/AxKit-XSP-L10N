#!perl
# $Id: TEST.PL 484 2005-03-25 03:58:41Z claco $
use strict;
use warnings FATAL => 'all';
use lib qw(lib);

use Apache::TestRunPerl ();

Apache::TestRunPerl->new->run(@ARGV);
