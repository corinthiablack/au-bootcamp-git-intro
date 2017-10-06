#!/bin/sh

#Script for Lab Assignment Four
#The goal of this exercise is to work collaboratively with your team members to write a simple shell script 


file="$1"

#seperate the sequence from the sequence name
name=`grep '>' $1`
sequence=`grep -v '>' $1`

#total sequence
total=`echo $sequence | wc -m`

#print output name and percent to file
echo "$name" >${1}_sequencecount.txt
echo "$total" >>${1}_sequencecount.txt


#search for files included in the command line and print the total sequences and filename to the output
for file in "$@"
do
	
        NUM=`grep '>' $file | wc -l`
       	filename=`basename $file`

	echo $NUM $filename
        
done

#NEED TO FIGURE OUT HOW TO ADD TOTAL SEQUENCES TO PRINT AFTER THE LOOP

#The final line should have the total number of sequences across all files
TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL
