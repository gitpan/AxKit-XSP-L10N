#!perl -wT
# $Id: pod_syntax.t 484 2005-03-25 03:58:41Z claco $
use strict;
use warnings;
use Test::More;

eval 'use Test::Pod 1.00';
plan skip_all => 'Test::Pod 1.00 not installed' if $@;

all_pod_files_ok();
