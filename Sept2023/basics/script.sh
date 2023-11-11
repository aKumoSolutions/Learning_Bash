#!/bin/bash

#mkdir scripts
#touch scripts/test.sh
#mv script.sh scripts/

name=$1
age=$2
location=$3

echo "Hello there $name"
echo "Wow you are $age years young!"
echo "You live in $3?!"

echo $0

echo "All my arguments: $@"

echo "The number of arguments given: $#" 

echo "This script is using $SHELL with process id of : $$" 

