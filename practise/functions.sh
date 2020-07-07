#! /bin/bash

function print()
{
    echo "this is inside the function.Number of arguments passed are $#"
    echo "the arguments are $@"
    VAR="var inside function"
}

#nothing will be printed
echo $VAR

# declare same variable outside the function
VAR="var outside function"
echo $VAR
print abc def ghi
echo $VAR
