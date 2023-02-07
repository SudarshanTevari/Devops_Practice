#!/bin/bash
#Script to accept username in uppercase and without spaces

read -p "Enter the username: " name

echo $name | grep -w '\([_]*[A-Z]\+\)\+' | grep -v "[@#$%^&*]"  | grep -Ev '[ "]'

if [ $? == 0 ]
then
	echo "Username accepted :)"
else
	echo "Username rejected :("
	echo "Username should be in uppercase and should not have any spaces."
fi
