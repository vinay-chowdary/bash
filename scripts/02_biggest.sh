#! /bin/bash
echo "enter N:"
read N
arr=[]
for (( i=0 ; i<$N ; i++ ))
do
    read arr[i]
done

MAX=${arr[0]}
echo $MAX
for i in ${arr[@]}
do
    if (( ${MAX}<$i ))
    then
        MAX=$i
    fi
done

echo "biggest :" $MAX