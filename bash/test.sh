#! /bin/bash

echo $# # Number of args
if [ $# -ne 1 ]; then
    echo "One argumnet needed"
else
    if [ -f $1 ]; then
       echo "it is a file"
    elif [ -d $1 ]; then
      echo "It is a directory"
    else
      echo "Not a file or folder"
    fi
fi