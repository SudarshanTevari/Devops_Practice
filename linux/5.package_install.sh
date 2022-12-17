#!/bin/bash

read -p "Enter the package name to install: " package_name

rpm -q $package_name > /temp

if [ $? == 1 ]
then
        echo "Installing \"$package_name\" on this server...."
        sudo yum install $package_name -y

else
        echo "Package \"$package_name\" is already installed on this server"
fi

rm -rf /temp
