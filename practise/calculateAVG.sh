#! /bin/bash
#purpose:
#date of creation :07/05/20
#author : vinay chowdary
#start

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
