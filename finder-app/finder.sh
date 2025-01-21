#!/bin/sh
# AUTHOR: Brian Ellis

filesdir=$1
searchstr=$2

if [ $# -lt 2 ];
then 
	echo "Error: Parameters not specified"
	exit 1
else	
	if [ -d "${filesdir}" ]
	then
		X=$(find "${filesdir}" -type f | wc -l)
		Y=$(grep -r -c "{$searchstr}" "${filesdir}"| wc -l)
		echo "The number of files are ${X} and the number of matching lines are ${Y}"
        	exit 0
	else
		echo "Error: ${filesdir} not found on filesystem"
        	exit 1

	fi
fi
