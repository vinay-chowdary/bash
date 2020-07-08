#! /bin/bash

function print()
{
    echo "this is inside the function.Number of arguments passed are $#"
    echo "the arguments are $@"
    VAR="var inside function"
    for i in $@
    do
        echo "$i"
    done
    local VAR2="accessed only inside a function"
}

#nothing will be printed it was not defined in global scope
echo $VAR

# declare same variable outside the function
VAR="var outside function"
echo $VAR
print abc def ghi
echo $VAR

# echo $VAR2 cannot be accessed outside function.defined as local variable
