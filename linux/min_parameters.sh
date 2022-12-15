#!/bin/bash


#Script needs min 3 parameters; if user provides less than 3 dispaly message to enter 3 parameters



if [ $# -ge  3 ]
then
	echo "This is First parameter: $1"
	echo "This is Second parameter: $2"
	echo "This is Third parameter: $3"
else
	echo "Please provide atleast 3 parameters"
fi


