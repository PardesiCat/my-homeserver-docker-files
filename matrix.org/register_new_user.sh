#written by Pardesi_Cat

echo -e "\e[1;32m type your Registratioon_share_secret\e[0m"
echo -e "\e[1;32m from your homeserver.yaml\e[0m"
read secret

sleep 3
echo -e "starting ...."
sleep 2
echo
docker exec -it matrix_synapse register_new_matrix_user -k="${secret}"
