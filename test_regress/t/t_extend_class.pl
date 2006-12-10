#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("./driver.pl", @ARGV, $0); die; }
# $Id$
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003-2006 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

if ($Last_Self->{v3}) {
    compile (
	     make_flags => 'CPPFLAGS_ADD=-I../t',
	     );
    execute (
	     check_finished=>1,
	     );
}

ok(1);
1;
