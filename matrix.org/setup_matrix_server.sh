#!/bin/bash
# written by Pardesi_Cat

echo -e "\e[1;32mType your server domain:\e[0m"
read -r domain

sleep 2
echo -e "\e[1;34mStarting the first setup...\e[0m"

# Create data directory if it doesn't exist
mkdir -p synapse-data
sleep 2

# Run docker with correct variable usage
docker run -it --rm \
    --mount type=bind,src="$(pwd)/synapse-data",target=/data \
    -e SYNAPSE_SERVER_NAME="${domain}" \
    --user=0:0 \
    -e SYNAPSE_REPORT_STATS=yes \
    matrixdotorg/synapse:latest generate
