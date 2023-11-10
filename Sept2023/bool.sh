#!/bin/bash 

bool=true

if [ $bool ]; then
    echo "Its True"
else
    echo "Its false!"
fi

echo $name
echo $$ 
pid=$(ls -la && echo $$)
echo $pid