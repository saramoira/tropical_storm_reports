#!/usr/bin/perl -w

use strict;
use warnings;

opendir IN, 'input';
my @in = grep { /^[^.]/ } readdir IN;	# reads all file names from current directory
closedir IN;

for my $in (@in) {
  open IN, '<', "output/$in" || next;
  open OUT, '>', "clean_output/$in" || die "can't open file output/$in";
  while(<IN>) { 						# reads input file line by line
  	$. == 6 and print OUT "|";			# inserts a vertical bar at line 6
  	$. == 7 and print OUT "|";			# inserts a vertical bar at line 7
    s/FORECAST POSITIONS AND MAX WINDS|\$\$/|/;
    s/\n|NNNN/ /g;
    s/CVT/CDT/;					
  } continue {
        print OUT;						# prints the edited file to the output folder
        if(eof){						# if the next line is the end-of-file
            close ARGV ;				# closes the current filehandle to reset $.
        }
    }
  close OUT;
  close IN;
}