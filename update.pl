#!/usr/bin/perl
use strict;
use FindBin '$Bin';
while (1) {
    print "Checking build\n";
    system("git fetch origin");
    system("./deploy") if (`git log HEAD.. --oneline` =~ /\S/);
    sleep 60;
}
