#!/bin/bash

cont_rem()
{
docker rm -f `docker ps --filter "status=exited" --format '{{.Names}}'`
}

docker ps -a | grep Exited > /temp_del

if [ $? == 0 ]
then
	cont_rem
else
	echo "No \"Exited\" containers to remove!..."
fi

rm -f /temp_del
