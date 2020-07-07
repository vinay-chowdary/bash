#! /bin/bash

# input through command line arguments
echo -e "this is $0 file with arguments \"$1\" \"$2\""

# when there are unknown number of arguments
args=("$@")
echo ${args[1]}

# print all arguments at a time
echo $@

#number of arguments
echo "number of args $#"

# reading line from a file

while read line
do
    echo $line
done < ${1:-/dev/stdin}



# output

# redirect output to stdout.txt , redirect errors to stderr.txt
ls -al 1>stdout.txt 2>stderr.txt

# redirect both to same file 
ls -al >> stdout.txt 2>&1

# another way
ls -al >& stdout.txt