#!perl
# $Id: SMOKE.PL 484 2005-03-25 03:58:41Z claco $
use strict;
use warnings FATAL => 'all';
use lib qw(lib);

use Apache::TestSmoke ();

Apache::TestSmoke->new(@ARGV)->run;
