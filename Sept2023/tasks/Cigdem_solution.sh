#!/bin/bash
if [ $# -le 0 ]; then
    echo "Usage : $0 <file_path>"
    exit 1
fi

file_path=$1
web_list="$(ls /var/www/html)"
echo $web_list

for web in $(cat $file_path); do
    name="$(echo $web | awk -F "/" '{ print $9}' | awk -F "." '{ print $1 }')"
    echo $name
done
if $name in "${web_list[@]}"
then
    echo "This $name is already exits"
else
    wget $web -P /tmp/
    unzip /tmp/$name.zip -d /tmp/
    rm -rf /tmp/*.zip
    mkdir /var/www/html/$name
    mv /tmp/*$name*/* /var/www/html/$name/
fi