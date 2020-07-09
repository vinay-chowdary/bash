#! /bin/bash
#purpose:learn sed command
#date of creation :07/09/20
#author : vinay chowdary
#start
# Description : sed 's/search-pattern/replacement-string/flags'
: '
   sed : Stream EDitor
   a stream is data that transfer from :
     1.one process to another process through a pipe
     2.one file to another file as redirect
     3.one device to another
   sed performs text transformations on streams
   ex : 1.substitute some text for another text
        2.remove lines
        3.append text after given lines
        4.insert text before some lines
    flags:
        i : case-insensitive , g : global-replace
    sed -i.bak 's/pattern/replacement-string/flags' -i : inplace editing , .bak : backups the file 
   
  '
# lets replace /home/vinay with /hello/world : by default / is delimiter for sed command
echo "/home/vinay" | sed 's/\/home\/vinay/\/hello\/world/'

# lets change the delimiter 
echo "/home/vinay" | sed 's#/home/vinay#/hello/world#'


#lets create a file test , will be deleted at last
cat << eof > test.txt
this is a test file
line number 2 in this file
this file is used to test sed command
eof
echo "test.txt is created" 

#lets replace file word with document file
sed -i 's/file/document file/' test.txt

#sed is mainly used to display contents by removing all comments
#remove all the lines that contain # | squeze all empty lines | display line number
#set -x
sed '/#/d' fileName | tr -s "\n" | cat -n
#set +x
#echo "------------------------"
#cat test.txt

#executing multiple sed commands same time

# lets do the same above sed command with all sed commands

sed '/#/d ; /^$/d' fileName

#put it another way

sed -e '/#/d' -e '/^$/d' fileName 

#change text between certain lines

sed '2,4 s/document file/file/' fileName

rm test.txt
#end