#! /bin/bash

# IFS Internal Field Seperator

LINE=`cat /etc/passwd | grep $1`
IFS=:
set $LINE

echo "username : $1"
echo "password : $2"
echo "UID : $3"
echo "GID : $4"
echo "Description : $5"
echo "Home Directory : $6"
echo "current shell : $7"