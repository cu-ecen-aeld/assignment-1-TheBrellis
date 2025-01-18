#!/bin/sh
# AUTHOR: Brian Ellis

$filesdir = $1
$searchstr = $2

if [ ];
then 
	echo "Error: Parameters not specified"
	exit 1
elif [  ];
then
	echo "Error: ${filesdir} not found on filesystem"
	exit 1
else
	echo "The number of files are ${X} and the number of matching lines are ${Y}"
	exit 0
fi
