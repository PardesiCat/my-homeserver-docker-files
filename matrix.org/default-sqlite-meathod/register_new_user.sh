#!/bin/bash
#written by Pardesi_Cat

FILE="synapse-data/homeserver.yaml"

if [ -f "$FILE" ]; then
    echo -e "\e[1;32mFound $FILE\e[0m"
    echo
    echo -e "\e[1;33mYour registration_shared_secret is:\e[0m"
    echo
    cat "$FILE" | grep registration_shared_secret
    echo
else
    echo -e "\e[1;31mError: $FILE not found!\e[0m"
fi

sleep 5

echo -e "\e[1;32mType your Registration_shared_secret\e[0m"
echo
echo -e "\e[1;32mfrom your homeserver.yaml\e[0m"
read -r secret

sleep 3
echo -e "starting ...."
sleep 2
FILE="data/homeserver.yaml"
echo
docker exec -it matrix_synapse register_new_matrix_user -k "$secret"
