###### 
# Write a small script that takes 
# an argument to install service/tool
# using yum or other package management

#!/bin/bash

tool=$1

if [ -z $tool ]; then 
  read -p "Please enter tool/service you want to install: " tool
fi 

dnf -y install $tool

systemctl start $tool

systemctl status $tool


