#! /bin/bash
echo "Enter  number"
read n
digit=0
Reverse=0

while (($n > 0))  
do
    digit=$(( $n % 10 ))
    Reverse=$(( ($Reverse * 10) + $digit )) 
    n=$(( $n / 10 ))
done

echo "Reverse $Reverse"