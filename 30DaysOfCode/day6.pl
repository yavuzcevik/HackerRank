#!/usr/bin/env perl

#Task 
#Given a string, S, of length N that is indexed from 0 to N-1, 
#print its even-indexed and odd-indexed characters as 2 space-separated strings on a single line.

#Input Format
#The first line contains an integer, T (the number of test cases). 
#Each line i of the T subsequent lines contain a String, S.

#Constraints
# 1 <= T <= 10
# 2 <= length of S <= 10000

use strict;
use warnings;

my $testCases = <STDIN>;
my @testCasesArray;
my $tempCase;
my @tempCaseArray;
#evenOrOdd: 0 if even; 1 if odd
my $evenOrOdd = 0;
my $flag = 0;
my @evenArray;
my @oddArray;
my @finalArray;
for ( 1 .. $testCases ){
    $tempCase = <STDIN>;
    chomp($tempCase);
    push(@testCasesArray, $tempCase);
}

foreach my $case (@testCasesArray){
    @tempCaseArray = split //, $case;
    foreach my $letter (@tempCaseArray){
        if( $evenOrOdd == 1 && $flag == 0 ){
            push(@oddArray, $letter);
            $evenOrOdd = 0;
            $flag = 1;
        }
        if( $evenOrOdd == 0 && $flag == 0 ){
            push(@evenArray, $letter);
            $evenOrOdd = 1;
        }
        $flag = 0
    }    
    $case = join("", @evenArray," ", @oddArray);
    push(@finalArray, $case);
    @evenArray = ();
    @oddArray = ();
    $evenOrOdd = 0;
    $flag = 0;
    @tempCaseArray = ();
}

foreach (@finalArray){
    print "$_\n";
}
