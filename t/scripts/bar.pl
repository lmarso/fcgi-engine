#!/usr/bin/perl

use strict;
use warnings;

use FCGI::Engine;

{
    package Bar;
    sub handler { () }
}

FCGI::Engine->new_with_options(handler_class => 'Bar')->run;