#!/bin/bash

if [ ! -z "$1" ] && [ ! -z "$2" ] && [ -z "$3" ] && [[ $1 == *".txt" ]]
then
	FILE="$HOME/$1"
	if [ -f "$FILE" ]; then
    	#if we use grep -P "([a-z-A-Z]+ )+$2$" $FILE it will only
		#return a names with only letter no number
	    #will only return if it has a first name and a second name are set 
		#if we find a match but doesn't have the first name stated it will not return it
		#if the name has a middle name it will return it
		#if the name has more 3 names it will still return it since some people can have 4 
		#names apart from first middle and last
		#if only a ine string is stated in the file without a space it will not return 
		#the text since the script will take it as if it only the first name was stated
		#while grep -P " $2$" $FILE will only check if the last name matchs
		grep -P "([a-z-A-Z]+ )+($2)$" $FILE
		# grep -P "^[a-zA-Z]+(?: [a-zA-Z]+)* ($2)$" $FILE
		#grep -P " $2$" $FILE
		echo " "
		echo "Goodbye!"
	else
		echo ""
		echo "$1 does not exists"
		echo ""
	fi		
	
else
	echo ""
	echo "You need to provide two arguments for this script to work."
	echo "Usage: my-lookup <text file name> <last name>"
	echo "Make sure the text name contains '.txt' at the end."
	echo ""
fi

