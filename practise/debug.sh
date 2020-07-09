#! /bin/bash
#purpose:
#date of creation :07/09/20
#author : vinay chowdary
#start

# PS4 is variable.It controls what is displayed before a line when using set -x
# the default value is 'x'

# another bash variables $BASH_SOURCE , $LINENO

# let us change the default value of PS4

PS4='-->'

set -x #start debug
read -p "enter first number : " NUM1
read -p "enter second number : " NUM2

select operand in '+' '-' '*' '/'
do
    case $operand in
    '+')
        echo $(( $NUM1 + $NUM2 ))
        ;;
    '-')
        echo $(( $NUM1 - $NUM2 ))
        ;;
    '*')
        echo $(( $NUM1 * $NUM2 ))
        ;;
    '/')
        echo "scale=3; $NUM1 / $NUM2 " | bc
        ;;
    *)
        echo "enter valid option"
        ;;
    esac
    break
done

set +x #stop debug

#end
