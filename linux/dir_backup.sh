#!/bin/bash
read -p "Enter the file name of backup: " f_name
echo
read -p "Enter the directory(absolute path) you want to backup: " s_dir
echo
read -p "Enter the destination directory where to want to take this backup?: " d_dir
echo

tar -czvf $d_dir/$f_name.tar $s_dir
echo

echo "Backup saved as \"$f_name.tar\" in directory \"$d_dir\"....."
echo
echo "Size of \"$f_name.tar\" is: "
du -sh $d_dir/$f_name.tar
