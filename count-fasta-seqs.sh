#!/bin/sh

#Script for Lab Assignment Four
#The goal of this exercise is to work collaboratively with your team members to write a simple shell script 

#search for files included in the command line and print the total sequences and filename to the output
for file in "$@"
do
        NUM=`grep '>' $file | wc -l`
       	filename=`basename $file`

	echo $NUM $filename        
done

#The final line should have the total number of sequences across all files
TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL

#working code should echo the name of the file without the full pathname and count the number of sequences within that file
