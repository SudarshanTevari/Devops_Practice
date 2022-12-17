#!/bin/bash

echo "--------------------USER NAME--------------------"
whoami
echo "--------------------HOST NAME--------------------"
hostname
echo "-----------------OPERATING SYSTEM-----------------"
uname
echo "------------------------CPU-----------------------"
mpstat
echo "----------------------MEMORY----------------------"
free -h
echo "--------------------DISK SPACE--------------------"
df -h
echo "-------------------BLOCK DETAILS-------------------"
lsblk
