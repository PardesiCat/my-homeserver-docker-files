#/bin/bash
#ofc these scipits are writtenby me 
echo -e "Starting whoogle container"
sleep 2

docker run --detach --network=npm_default --restart=always --env-file=whoogle.env  --name whoogle-search benbusby/whoogle-search:latest

