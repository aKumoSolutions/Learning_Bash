#!/bin/bash 

curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  -d '{"name":"created_via_script","region":"nyc1","size":"s-1vcpu-1gb","image":"ubuntu-20-04-x64"}' \
  "https://api.digitalocean.com/v2/droplets" | jq