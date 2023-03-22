#!/bin/bash

## FOR LOOP SYNTAX: 
# for item in $items
# do
#  command $item
# done

## Using sequence
# for num in $(seq 1 99); do 
#     echo "Welcome $num times"
# done

## dynamic for loop 

# for user in $(cat /etc/passwd | awk -F ":" '{ print $1 }'); do
#     mkdir ~/users/$user
# done

## for loop with conditions
for num in $(seq 1 100); do 
    if [ $num -eq 66 ]; then 
        echo "Invalid Number: $num"
    else
        echo "Valid Number: $num"
    fi 
done