#!/bin/bash 

for var in $(cat users.txt); do 
    if [ $var == 'abdul' ]; then
        echo "Abdul is in the list!"
    else
        echo "Abdul is missing!"
    fi
done
