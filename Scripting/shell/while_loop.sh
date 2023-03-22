#!/bin/bash 

## while loop syntax:
# while [ condition ]
# do
#    command1
#    command2
#    command3
# done

x=1 
while [ $x -le 5 ]; do
    echo "Welcome $x times" 
    x=$(($x + 1))
done