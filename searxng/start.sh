#/bin/bash
#ofc these scipits are writtenby me 
echo -e "Starting searxng container"
sleep 2


docker run -d \
             -v "${PWD}/searxng:/etc/searxng" \
             --name=searxng \
             --network=npm_default \
             --restart=always \
             -e "BASE_URL=https://search.pardesicat.xyz/" \
             -e "INSTANCE_NAME=Pardesi-Search" \
             searxng/searxng