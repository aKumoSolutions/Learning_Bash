#!/bin/bash 
# arugments
filename=$1
content=$2

function cert_writer {
  touch /var/www/html/certificates/$filename
  echo "$content" > /var/www/html/certificates/$filename
}

if [ $# -lt 2 ]; then
    echo "Usage: $0 <cert filename> <file conent>"
    exit 1
fi

cert_writer



