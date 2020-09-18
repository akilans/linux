#! /bin/bash

folder_names=$(cat folders.txt)
echo $folder_names

for folder in $folder_names;do
    mkdir $folder
    if [ $? -eq 1 ];then
        echo "Error: $folder"
    else
        echo "$folder created"
    fi
done