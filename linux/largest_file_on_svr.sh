#!/bin/bash

echo "These are the top 10 files with highest size:"

for i in $(find / -type f -printf "%s %p\n" | sort -hr | head -10 | awk '{print $2}')
do
       	du -sh $i
done
