#!/bin/bash
#Accept username's password only if its length is more than 8 and should have atleast one uppercase, lowercase, numbers & special characters(@#$%^&*)

read -p "Enter username: " name
read -p "Enter password: " password

if [ ${#password} -ge 7 ]
then
	echo "$password" | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[@#$%^&*]" > /tempdel
	if [ $? == 0 ]
	then
		echo "Password accepted :)"
	else
		echo "Password rejected :("
		echo "Password should be alphanumeric;"
		echo "Must have atleast one uppercase, lowercase, numbers & special characters(@#$%^&*)"
	fi
else
	echo "Password length should be more than 8 characters"
fi

rm -f /tempdel
