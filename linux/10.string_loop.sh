#!/bin/bash

#shell script to loop based on number of characters in a string
read -p "Enter the string..." string

for ((i=0; i<${#string}; i++)); do   # # operator to get the length of the string
    char=${string:i:1}		     # : operator to extract each indivudal character from the string
    echo $char
done
