#! /bin/bash
#purpose: hacker rank question. evaluating arithmetic expression and rounding  upto 3 digits after decimal
#date of creation :07/05/20
#author : vinay chowdary
#start

read line;
printf "%.3f" "$(echo "scale = 4; $line" | bc)"


#calculating average

read n
NUM=0
for (( i=0 ; i<n ; i++ ))
do
    read num[i]
    NUM=$(( NUM + num[i] )) 
done

#echo $((NUM / n))

printf "%0.3f" "$(echo "scale=4; $NUM / $n" | bc)"

#end
