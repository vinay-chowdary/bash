#! /bin/bash
#first line the path to bash (which is the one of the interpreters of shell scripting)
echo "hello welcome to bash scripting"

#escape sequence in bash
echo -e "this is the \v example for escape \n sequence in echo"

#avoid next line insertion at last of echo
echo -n "controller will not go next line  "

: '
    this is a block comment
    types of shells:
    1.bourne shell(sh)
    2.csh
    3.tcsh
    4.Bourne-Again SHell(BASH)
    5.zsh

    change default shell of a user by changeshell "chsh" command
'

# variables and assignment
NUM1=10

echo -e "\nnum1 = ${NUM1}"

NUM2=$NUM1
echo "num2 = ${NUM2}"

NUM1=`expr ${NUM1} + 20`
echo "num1 after adding 20 to it $NUM1"

# another way of doing the same
NUM1=$(( NUM1 + 10 ))
echo "num1 = ${NUM1}"

# reading from terminal

read NUM2
echo "u entered ${NUM2}"