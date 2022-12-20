#!/bin/bash

read -p "Enter file name to dispaly details: " file_name

echo "Number of lines in file \"$file_name\" are: " `cat $file_name | wc -l`
echo "Number of words in file \"$file_name\" are: " `cat $file_name | wc -w`
echo "Number of characters in file \"$file_name\" are: " `cat $file_name | wc -m`
echo "Size of file \"$file_name\" in byte: " `cat $file_name | wc -c`


