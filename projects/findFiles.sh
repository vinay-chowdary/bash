#! /bin/bash
#purpose: list all files on a date provided
#date of creation :07/06/20
#author : vinay chowdary
#start


# checkInput(){
# 	re='^[0-9]+$'
# 	if ! [[ $1 =~ $re && $2 =~ $re && $3 =~ $re ]] ; then
#    		echo "error: Not a number"
# 		exit; 
# 	fi
# 	return 1
# }


validate()
{
	DATE=$1
	if [[ -n $(date -d "${DATE}" | grep "IST" ) && `expr length $DATE` == 10  && ${DATE:4:1} == "-" && ${DATE:7:1} == "-" ]]
		then
			# if (( $(date +"%Y-%m-%d") >= ${DATE} ))  some fault with this (same month date is showing as beyond date)
			TODAY=$(date +"%Y%m%d")
			# IFS="-"
			# set $DATE
			# checkInput $1 $2 $3
			# if [[ $#? ]]
			if (( ${TODAY} >= $(date +%Y%m%d -d "$DATE") ))
			then
				return 1
			else
				echo "entered date is beyond today"
			fi
		else
			echo "date doesn't exist or wrong format entered ... "
		fi
		return 0
}










echo -e "\nhidden files will not be listed.."
echo -e "\nList files by :\n"
select CHOICE in  "date" "period of time" "file-extension"
do
	echo
	case $CHOICE in
	"date")
		read -p "enter date in YYYY-MM-DD format ( ex : 2015-10-31 ) : " DATE
		 validate $DATE
		if (( $? ))
		then
			echo
			TOMORROW="$(date +%Y-%m-%d -d "$DATE + $i day")"
			find -type f -not -path "*/\.*" -newermt "$DATE" ! -newermt "$TOMORROW" 
			echo
		fi;;



	"period of time")
		read -p "from date YYYY-MM-DD : " FROMDATE
		validate $FROMDATE
		if (( $? ))
		then
			read -p "to date YYYY-MM-DD : " TO
			validate ${TO}
			if (( $? )) && (( $(date +%Y%m%d -d "$FROMDATE") <= $(date +%Y%m%d -d "$TO") ))
			then
				echo
				find -type f -not -path "*/\.*" -newermt "$FROMDATE" ! -newermt "$TO" 
				echo
			else
				echo "from date is larger than todate"
			fi
			
		fi;;


	"file-extension")
		read -p "enter extension ( ex : sh for shell-script files) : " NAME
		find -type f -not -path "*/\.*" | grep "\.${NAME}$";;


	*)
		echo "u have not selected the valid option";;
	esac
	break;
done


# if (( $(date +"%Y-%m-%d") >= "2020-07-03" ))
# then 
# 	echo "true"
# else
# 	echo "false"
# fi


#end
