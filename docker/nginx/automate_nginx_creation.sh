#!/bin/bash

echo
echo "To build this image and container all the prerequisites should be there in `pwd` else please cancel manually"
read -p "Enter tag for custom \"NGINX\" image to build: " iname
echo
docker image build -t $iname .
echo
echo
read -p "Enter the container name to create with \"$iname\" image: " cname
read -p "Enter the unused port for maping Port with \"$cname\" container: " cpnum
read -p "Enter the port for which you want to map with host OS(like 80 or 443): " hpnum

docker container run -it --name $cname -p $cpnum:$hpnum $iname bash
echo
