sleep 5 

echo "STARTING DOCKER ALL IN ONE AIO"

sleep 2 

echo "apache port 11000 will be used" 

sudo docker run -d \
--sig-proxy=false \
--name nextcloud-aio-mastercontainer \
--restart always \
--publish 8080:8080 \
--env SKIP_DOMAIN_VALIDATION=true \
--env APACHE_PORT=11000 \
--env APACHE_IP_BINDING=127.0.0.1 \
--env NEXTCLOUD_DATADIR="${PWD}/ncdata" \
--volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
--volume /var/run/docker.sock:/var/run/docker.sock:ro \
nextcloud/all-in-one:latest
