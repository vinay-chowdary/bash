#! /bin/bash
echo "enter number"
SUM=0
read NUM
while [ $NUM != 0 ] 
do
    SUM=$((SUM+NUM%10))
    NUM=$((NUM/10))
done
echo $SUM