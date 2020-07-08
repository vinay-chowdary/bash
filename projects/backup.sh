#! /bin/bash 
#purpose: lets create a backup for the file provided through shell scripting
#date of creation :07/08/20
#author : vinay chowdary
#start


test -z $1 && echo "provide backupfile" && exit 1

FILE=$(basename $1)
DIR=$(dirname $1)

cd $DIR

test -f $FILE || ( echo "no such file found" && exit 1 )

# lets create a backup directory in home dir

BACKUP="$HOME/.backup/"

test -d  $BACKUP || ( mkdir $BACKUP && echo "backup dir created" )

# $$ is pid of current process. Wh

BFILE="$BACKUP$FILE.$(date +%F).$$"

echo "backing up to $BACKUP as $FILE.$(date +%F).$$"

cp $FILE $BFILE

echo "done"

echo "deleting backup dir..."
sleep 1
rm -r $BACKUP
#end
