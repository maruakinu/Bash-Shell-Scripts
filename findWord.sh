#! /bin/bash

mkdir ./hot-folder

for myfile in *;
do 
    if [ -f "$myfile" ]; then
        echo "$myfile"
        check=$(grep -n -i "new" "$myfile")
        if [ -z  "$check" ]; then
            echo "EMPTY"
        else 
            echo "$check"
            echo "FOUND"
            cp "$myfile" ./hot-folder
            echo "*********" >> hot-folder/"$myfile"
            echo "$check" >> hot-folder/"$myfile"
        fi
    else 
        echo "$myfile is Not A file.."
        echo " "
    fi
    echo " "
done