echo "enter N"
read N
num1=1
num2=2  
echo "series : "
for (( i=0; i<N; i++ )) 
do
    echo -n "$num1 "
    nextNum=$((num1 + num2)) 
    num1=$num2
    num2=$nextNum 
done