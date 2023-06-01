#! /bin/bash

for f in *
do
    if [ -f $f ]; then 
        echo "This is a file: $f"
        echo "This is a file: $f" >> listofFiles.txt
    else
        echo "This is a folder: $f"
        echo "This is a folder: $f" >> listOfFolders.txt
    fi
done