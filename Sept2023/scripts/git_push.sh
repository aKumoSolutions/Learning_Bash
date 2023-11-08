#!/bin/bash 
# -d .git 

if [ -d .git ]; then
    git add .
    if [ $# -le 0 ]; then
        read -p "Please enter commit message: " commit_message
        git commit -m "$commit_message"
    else
        git commit -m "$1"
    fi
    git push
else
    echo "You are not in a repository 🫢"
fi



