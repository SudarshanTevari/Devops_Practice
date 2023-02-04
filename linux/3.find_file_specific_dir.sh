#!/bin/bash

read -p "Enter file name to search:" fname
read -p "Enter absolute path to search \"$fname\": " fpath

read ${fpath:=/}
find $fpath -name "$fname"
