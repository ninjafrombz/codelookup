if [ ! -z "$1" ] && [ ! -z "$2" ] && [ -z "$3" ] && [[ $1 == *".txt" ]]
then
	FILE="$HOME/$1"
	if [ -f "$FILE" ]; then

		grep -P "([a-z-A-Z]+ )+($2)$" $FILE
		echo " "
		echo "Thank you for using this program!"
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
