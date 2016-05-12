#!/bin/bash
# This script will crate git project in specified location,only need to pass the name of the porject.


#if [ $(id -u) -ne 0 ] ; then
#  echo "Please run script as root user"
#  exit 1
#fi

if [ $# -ne 1 ] ; then
  echo "Usage : $0 <project name>"
  exit 2
fi

ProjectName=$1

cd /home/$USER/git-linux/

mkdir -p  ${ProjectName}.git

cd ${ProjectName}.git/

git init --bare

cd ..

chown -R $USER:$USER ${ProjectName}.git

exit 0

