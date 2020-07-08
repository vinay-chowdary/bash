#! /bin/bash
#purpose:
#date of creation :07/08/20
#author : vinay chowdary
#start

# used when on evariable is compared against multiple values
# it is easier to read than complex if statements
# [yY] these are regex or wildcards...
# either y or Y or any combination of yes
read -p "yes  or no : " ANSWER

case $ANSWER in
    [yY] | [yY][eE][sS])
        echo "your answer is yes"
        ;;
    [nN] | [nN][oO] )
        echo "your answer is no"
        ;;
    *)
        echo "enter valid input"
        ;;
esac

#end
