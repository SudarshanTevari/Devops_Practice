#!/bin/bash

echo "--------------------USER NAME--------------------"
whoami
echo "--------------------HOST NAME--------------------"
hostname
echo "-----------------OPERATING SYSTEM-----------------"
uname
echo "--------------------CPU's count-------------------"
nproc
echo "----------------------MEMORY----------------------"
free -h
echo "--------------------DISK SPACE--------------------"
df -h
echo "------------------BLOCK DETAILS-------------------"
lsblk
