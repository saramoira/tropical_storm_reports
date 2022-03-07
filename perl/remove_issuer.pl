#!/usr/bin/perl -w

use strict;
use warnings;

opendir IN, 'input';
my @in = grep { /^[^.]/ } readdir IN;	# reads all file names from current directory
closedir IN;

for my $in (@in) {
  open IN, '<', "input/$in" || next;
  open OUT, '>', "output/$in" || die "can't open file output/$in";
  while(<IN>) { 						# reads input file line by line
  	print OUT unless ($. == 6 and m/Issued|ISSUED|NWS/);
  	
        if(eof){						# if the next line is the end-of-file
            close ARGV ;				# closes the current filehandle to reset $.
        }
    }
  close OUT;
  close IN;
}