#!/bin/bash

read -p "What is your github username? : " username
read -p "Great! Which repo do you want to see? : " repo

response="$(curl -H "Accept: application/vnd.github+json" \
https://api.github.com/repos/$username/$repo)"

# echo $response | jq

echo "Here is some information about the repo:"
echo "Avatar url: $(echo $response | jq -r .owner.avatar_url)"
echo "Owner: $(echo $response | jq -r .owner.login)"
echo "Github Url: $(echo $response | jq -r .owner.html_url)" 