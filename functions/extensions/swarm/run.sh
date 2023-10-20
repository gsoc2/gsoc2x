docker swarm init
chown 1000:1000 -R gsoc2-database/
docker network create -d overlay gsoc2_prod
docker stack deploy --compose-file=docker-compose.yml gsoc2_swarm
