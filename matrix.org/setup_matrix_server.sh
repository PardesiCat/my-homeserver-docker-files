#written by Pardesi_Cat

echo -e "\e[1;32m Type your server domain\e[0m"
read domain

sleep 2
echo -e "starting the 1st setup"
mkdir synapse-data
sleep 2

docker run -it --rm \
    --mount type=bind,src=$(pwd)/synapse-data,target=/data \
    -e SYNAPSE_SERVER_NAME=${DOMAIN} \
    --user=0:0 \
    -e SYNAPSE_REPORT_STATS=yes \
    matrixdotorg/synapse:latest generate
