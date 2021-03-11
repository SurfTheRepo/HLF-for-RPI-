docker-compose -f laptop.yaml down -v
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)