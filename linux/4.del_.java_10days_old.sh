#!/bin/bash

ls -a | grep '.java$' > /temp 

if [ $? == 0 ]
then
	echo "All the \".java\" files on this directory are: "
	ls -a | grep '.java$' 

	echo "Files created within 10 days are:"
	find -mtime -10 | grep '.java$'

	echo "Deleted files which are older than 10 days:"
	find -mtime +10 | grep '.java$'
	rm -rf `find -mtime +10 | grep '.java$'`

else
	echo "\".java\" files are not found on this directory"
fi

rm -rf /temp


