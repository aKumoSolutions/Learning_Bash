#!/bin/bash

do_droplet="$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  "https://api.digitalocean.com/v2/droplets")"

droplet_num=$(echo $do_droplet | jq .droplets | jq length)
droplet_num=$(($droplet_num-1))

for droplet in $(seq 0 $droplet_num); do
    echo "Droplet $droplet: ID: $(echo $do_droplet | jq -r .droplets[$droplet].id) \
        Name: $(echo $do_droplet | jq -r .droplets[$droplet].name)"
done
