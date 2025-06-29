#!/usr/bin/env perl

use strict;
use warnings;
#use diagnostics;
use v5.40.0;

my $fh;															              #this is the file handler
my $source = 'sample.txt';										    #this is the source file									
my $des;														              #once the targeted word(s) fetched, stores them in this variable
my $destination = "output.txt";									  #new found words are stored in this text file
my $string;														            #this is the targeted string to be searched
my $word;
my $keywords_with_keys;
my $keywords_with_values;
my $keyword;

#my @keywords_with_keys;
#my @keywords_with_values;

my %keyword = (adj => 'adjective', 
			   adv => 'adverb', 
			   dat => 'dative',
			   fem => 'feminin', 
			   con => 'conjunction', 
			   mas => 'masculine', 
			   neu => 'neutral', 
			   nou => 'noun', 
			   plu => 'plural',
			   ref => 'reflexive verb',	
			   ver => 'verb');

open($fh, '<', $source) or die $!;

open($des, '>', $destination) or die $!;

	sub abbreviated_list{
		for(keys %keyword){
			$keywords_with_values = ucfirst $keyword{$_};
			$keywords_with_keys = ($_);
			say $keywords_with_keys, " - ", $keywords_with_values;
		}
	}

print "You can use the abbreviated keywords.\n";		
		abbreviated_list();	
	
print "\nEnter the keyword:";
chomp($word = <STDIN>);
	my $safe_search = quotemeta($word);
	while($string = <$fh>){
		if($string =~ /\b($safe_search)\b/i) {
			print $des ($string);
		} 
	}
	
close($fh);
close($des);
