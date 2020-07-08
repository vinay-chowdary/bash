#! /bin/bash
# purpose:learn about exit statuses in this script
# exit code : range from 0-255
# 0 : success , other-value : error
# date of creation :07/08/20
# author : vinay chowdary
# start


# $? contains the return code of previously executed command 

HOST="google.com"
ping -c 1 "$HOST" >> output.log
if [ "$?" -eq "0" ]
then 
    echo "ping executed successfully...$HOST is reachable"
else
    echo "exit code : $?  unreachable host"
fi




# using && and || commands with exit status

# the above code can be written as


# && : executes the second command when first command executes successfully ( #? = 0 )
ping -c 1 "$HOST" >> output.log && echo "\"reachable\""
ping -c 1 "$HOST" >> output.log || echo "\"unreachable\""

rm output.log
#end
