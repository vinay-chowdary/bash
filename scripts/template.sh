#! /bin/bash
#purpose:this is a script to insert boiler plate code automatically into every shell script while creating it
#date of creation :07/07/20
#author : vinay chowdary
#start

function template()
{
	file="${1}"
if [[ -n "${file}" ]]
then
	 touch "${file}.sh"
cat << end > "${file}.sh"
#! /bin/bash
#purpose:
`echo "#date of creation :"``date +'%D'`
#author : vinay chowdary
#start
#end
end
	echo "opening with gedit.."
	sleep 1
	`xdg-open "${file}.sh"`
else
	echo "no arguments found.."
	echo "pass file name as parameter without extension"
fi
}

template $1

#end
