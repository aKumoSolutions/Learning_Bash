#!/bin/bash

 
echo "this script name is $0" ## $0 represents script itself by presenting the name

echo "Hello there $1 $2 $3 $4" ## any shell script by defualt has 9 arguments {$1..$9}

echo "This is the list of all arguments given by the user: $@"

echo "This script is running with this PID: $$"

### git pull 
### git add .
### git commit -m "some comment"
### git push