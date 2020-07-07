#! /bin/bash
#purpose:printing binary tree ( Hacker rank challenge )
#date of creation :07/05/20
#author : vinay chowdary
#start


function Y()
{
	len="$1"
	rows="$len"
	cols="$(( 2 * len + 1 ))"
	for (( i=0 ; i<"$rows" ; i++ ))
	{
		for (( j=0 ; j<"$cols" ; j++ ))
		{
			if (( "$i" == "$j" || "$j" == "$(( cols - i - 1 ))" ))
			then
				echo -n 1
			else
				echo -n _
			fi
		}
		echo
	}

	for (( i=0 ; i<"$rows" ; i++ ))
	{
		for (( j=0 ; j<"$cols" ; j++ ))
		{
			if (( "$j" == $(( cols / 2 )) ))
			then
				echo -n 1
			else
				echo -n _
			fi
		}
		echo
	}


}

Y 16





#end

