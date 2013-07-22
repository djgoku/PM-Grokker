#!/usr/bin/perl
use v5.16;
use Test::More 'no_plan';
use PM::Grokker;

my $xml = PM::Grokker->new(file => 'pm.xml');

isa_ok($xml, 'PM::Grokker');
my $groups = $xml->groups;

is(717, scalar @{$groups}, 'There are 717 groups currently');
is(0,$groups->[0]->id,'ny.pm group id is 0, they were the first!');
is('active',$groups->[0]->status,'ny.pm is still active!');

# my $group_count;
# my %group_active;

# foreach(@{$groups}) {
# 	$group_count++;
# 	$group_active{$_->status}++;
# }

# print "Total Groups $group_count: \n";
# map {printf "Status: %-20s Count: %-5i\n",$_,$group_active{$_}} sort keys %group_active;


done_testing();