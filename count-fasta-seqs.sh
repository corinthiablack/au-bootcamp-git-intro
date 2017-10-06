<<<<<<< HEAD

<<<<<<< HEAD
#COMMENT HERE
#Script for Lab Assignmennt Four 
file="$1"
=======
=======
#!/bin/sh

#search for files included in the command line and print the total sequences and filename to the output
>>>>>>> 1e5e2baac1e01936c7fd5b5583ded0d7a3ed282f

for file in "$@"
do
	
        NUM=`grep '>' $file | wc -l`
       	filename=`basename $file`

	echo $NUM $filename
        
done


TOTAL=`grep '>' $@ | wc -l`
echo $TOTAL
>>>>>>> 2b489bedc7205c2208ad006e6c5b754d40d2efff
