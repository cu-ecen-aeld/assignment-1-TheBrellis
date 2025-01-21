#!/bin/sh
# AUTHOR: Brian Ellis

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
	echo "Error: not all arguments specified"
	exit 1;
else
	if [ -d "$(dirname "${writefile}")" ]
	then
		touch "${writefile}"
		echo "${writestr}" > "${writefile}"
		exit 0;
	else
		mkdir -p "$(dirname "${writefile}")"
		touch "${writefile}"
		echo "${writestr}" > "${writefile}"
		exit 0;
	fi
fi
