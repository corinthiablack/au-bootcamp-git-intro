#!/bin/sh

#search for files included in the command line and print the total sequences and filename to the output

for file in "$@"
do
	
        NUM=`grep '>' $file | wc -l`
       	filename=`basename $file`

	echo $NUM $filename
        
done


TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL
