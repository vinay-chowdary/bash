#! /bin/bash

# while loop
NUM=1
echo "while loop :"
while (( ${NUM} < 10 ))
do
    echo ${NUM}
    NUM=$(( NUM+1 ))
done

: '
    the same while loop
    while [ ${NUM} -lt 10 ]
    do
        echo ${NUM}
        NUM=$(( NUM+1 ))
    done

'

#until loop

NUM=1

echo -e "\nuntil loop :"
until (( ${NUM} > 10 ))
do
    echo ${NUM}
    NUM=$(( NUM+1 ))
done

# type 1 for loop

echo -e "\nfor loop1 :"
for i in 1 2 3 4 5
do 
    echo $i
done


# type 2 for loop 1 to 20 increment by 2

echo -e "\nfor loop2 :"
for i in {1..20..2}
do 
    echo $i
done


# type 1 for loop with break and continue statements

echo -e "\nfor loop3 :"
for (( i=0 ; i<10 ; i++ ))
do 
    if [ $i -eq 5 ]
    then continue
    elif [ ${i} -gt 8 ]
    then break
    fi
    echo $i
done

sleep 2
clear