#!/bin/bash 

username=$1 

useradd $username 

if [ $? == '0' ]; then
    echo "User $username has been created"

elif [ $? == '9' ]; then 
    echo "The user $username already exists"

elif [ $? == '3' ]; then 
    echo "You entered a invalid username"

else
    echo "There was a problem"
fi
