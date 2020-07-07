#! /bin/bash

STR1="abc"
STR2="abc"

# length of the string
echo `expr length $STR1`

if [ $STR1 = $STR2 ]
then
    echo "strings match"
else 
    echo "donot match"
fi


# this is recomended way
if [[ $STR1 == $STR2 ]]
then 
    echo "equal"
elif [[ $STR1 > $STR2 ]]
then 
    echo "str1 > str2"
elif [[ $STR1 < $STR2 ]]
then 
    echo "str1 < str2"
fi

# concatenation

STR3=$STR1$STR2
echo $STR3

# first letter capital
echo ${STR2^}

# all capital
echo ${STR2^^}

# first letter capital in another way
echo ${STR1^a}


# conversion from hex to decimal
read hex
echo "obase=10; ibase=16; $hex" | bc