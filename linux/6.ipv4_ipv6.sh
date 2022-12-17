#!/bin/bash


echo "---------------------Private IPV4---------------------"
hostname -I

echo "---------------------Public IPV4----------------------"
curl ifconfig.me 
echo

echo "-------------------------IPV6-------------------------"
ip addr | grep inet6 | awk 'NR>1' | awk '{print $2}'



