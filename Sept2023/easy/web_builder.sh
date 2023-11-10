#!/bin/bash 
if [ $# -le 0 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path=$1

# for existing_web in $(ls /var/www/html); do 
# carvilla           carvilla  
# edgecut            edgecut  
# finexo             finexo  
# little-fashion     little-fashion  
# spering            spering
#                    finter.zip


for web in $(cat $file_path); do 
    name="$(echo $web | awk -F "/" '{ print $9}' | awk -F "." '{ print $1 }')"
    wget $web -P /tmp/
    unzip /tmp/$name.zip -d /tmp/
    rm -rf /tmp/*.zip
    mkdir /var/www/html/$name
    mv /tmp/*$name*/* /var/www/html/$name/
done