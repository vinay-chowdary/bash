echo "enter N"
read N

function isPrime()
{
    NUM=$1
    if (( $NUM%2 == 0 || $NUM % 3 == 0 ))
    then 
        return 0
    else
        s=$(echo "sqrt($NUM)" | bc)
        for ((i=5;i<=$s;i=i+6))
        do
            
            if (( $NUM % $i == 0 || $NUM % $((i+2)) == 0 ))
            then
                return 0
            fi
        done
    fi
    return 1
}
if (( $N >= 2 ))
then
    echo -n "2 3 "
    TOTAL=2
fi
for ((j=5;$TOTAL<N;j++))
do
    isPrime $j
    status=$?
	if (( $status ))
    then
        TOTAL=$((TOTAL+1))
        echo -n "$j "
    fi
done
