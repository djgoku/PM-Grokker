#!/usr/bin/perl
use v5.16;
use PM::Grokker;

my $xml = PM::Grokker->new(file => 'pm.xml');


my $groups = $xml->groups;
my $group_count;
my %group_active;

map{
	$group_count++;
	$group_active{$_->status}++;
} @{$groups};

print "Total Groups $group_count: \n";
map {printf "Status: %-20s Count: %-5i\n",$_,$group_active{$_}} sort keys %group_active;