#! /bin/bash
#purpose: professional menus : select loop
#date of creation :07/05/20
#author : vinay chowdary
#start

select car in BMW ROVER MARUTI MERCEDESE
do
    case $car in
    BMW )
        echo "BMW selected" ;;
    ROVER )
        echo "ROVER" ;; 
    MARUTI )
        echo "MARUTI selected"  ;;
    MERCEDESE )
        echo "MERCEDESE selected"   ;;
    * )
        echo "ERROR! please select valid option" ;;
    esac
    break;
done

echo "press any key"
while [ true ]
do
    read -t 3 -n 1
    # $? is exit status of most recently executed command
    # if the command was executed successfully $? is 0
    if [ $? = 0 ]
    then
        echo "you have terminated..."
        exit;
    else
        echo "waiting for key press"
    fi
done

done
#end
    