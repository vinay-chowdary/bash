#! /bin/bash

NUM1=11
NUM2=25

if [ ${NUM1} -lt 10 ] && [ ${NUM2} -lt 10 ]
then 
    echo "both are less than 10"
elif [ ${NUM1} -gt 10 -a ${NUM2} -gt 10 -a ${NUM1} -lt 20 -a ${NUM2} -lt 20 ]
then 
    echo "both are greater than 10 but less than 20"
elif [ ${NUM1} -gt 20 -o ${NUM2} -gt 20 ]
then 
    echo "either of them is gt 20"
elif [ ${NUM1} -gt 30 ] || [ ${NUM2} -gt 30 ]
then
    echo "either of them is greater than 30"
else
    echo "end of if"    
fi

if [[ ${NUM1} -le 10 && ${NUM2} -le 10 ]]
then    
    echo "both of them are <=10"
elif (( $NUM1 == $NUM2 ))
then 
    echo "both are equal"
elif (( ${NUM1} > ${NUM2} ))
then
    echo "num1 > num2"
else
    echo "both are > 10 and num2 > num1"
fi
