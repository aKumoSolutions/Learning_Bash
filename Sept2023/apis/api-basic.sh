#!/bin/bash

# JSON -- Javascript Object Notation

# info="$(curl https://f4idu2pd8h.execute-api.us-east-1.amazonaws.com/v1/info | jq -r .body)"
# name=$(echo $info | jq .[0].staff[0].name)

DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  "https://api.digitalocean.com/v2/droplets/$DROPLET_ID" | jq .droplet.networks.v4[0].ip_address



# info='{"name": "Abdul", "age": 23, "hobbies": ["vidoe games", "scripting", "cooking", {"animals": ["cats", "chickens", "bunny"]}]}'
# echo $info | jq .hobbies[3].animals[0]
