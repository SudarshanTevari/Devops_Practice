#!/bin/bash

echo "Saving backup of Jenkins directory at "/.backup"..."
mkdir /.backup/
tar -czvf /.backup/jenkins_backup.tar.gz /var/lib/jenkins/
echo

echo "Size of \"jenkins_backup\" file is:..."
du -sh /.backup/jenkins_backup.tar.gz
echo
