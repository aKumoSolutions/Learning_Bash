#!/bin/bash 

for web in $(cat $1); do
    name=$(echo $web | awk -F "/" '{ print $9 }' | awk -F "." '{ print $1 }')

if [ -d "/var/www/html/$name" ]; then
        echo "Website $name already exists. Skipping download boss."
    else
        wget $web -P /tmp/
        unzip /tmp/$name.zip -d /var/www/html/
        rm -rf /tmp/$name.zip
        mkdir /var/www/html/$name
        mv /var/www/html/*$name*/* /var/www/html/$name/
        echo "You Downloaded a new website $name. Check it out!"
    fi
done