#!/bin/bash
# written by Pardesi_Cat

echo -e "\e[1;32mType your server domain:\e[0m"
read -r domain

sleep 2
echo -e "\e[1;34mStarting the first setup...\e[0m"

sleep 2

# Run docker with correct variable usage

docker-compose run --rm -e SYNAPSE_SERVER_NAME="${domain}" -e SYNAPSE_REPORT_STATS=yes synapse generate