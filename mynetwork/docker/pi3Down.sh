docker-compose -f pi3.yaml down -v
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)