#! /bin/bash
#purpose:
#date of creation :09/20/20
#author : vinay chowdary
#start

for file in $( find -type f -not -path "*/\.*" )
do
	echo "changing mode for ${file}"
	chmod 644 $file
done
#end
