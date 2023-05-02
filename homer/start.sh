#/bin/bash
#ofc these scipits are writtenby me 
echo -e "Starting homer container"
sleep 2

docker run -d \
  --network=npm_default \
  --name=homer \
  --restart=always \
  -v ${PWD}/web/:/www/assets \
  --restart=always \
  b4bz/homer:latest