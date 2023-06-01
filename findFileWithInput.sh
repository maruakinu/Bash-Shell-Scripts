#! /bin/bash

read -p "Enter Name of File to Find: " ftf

for myfile in *
do 

     if [ -f "$myfile" ]; then

        if [ "$myfile" == "$ftf" ]; then

            echo " "
            echo "==============="
            echo "$myfile" 
            echo "FOUND!!!"
            echo "==============="
            echo " "
        
        fi
         
    fi

done