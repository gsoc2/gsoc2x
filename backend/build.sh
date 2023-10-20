#!/bin/sh
docker stop gsoc2-backend
docker rm gsoc2-backend
docker rmi ghcr.io/gsoc2/gsoc2-backend:nightly

docker build . -t ghcr.io/gsoc2/gsoc2-backend:nightly
docker push ghcr.io/gsoc2/gsoc2-backend:nightly

echo "Starting server"
#docker run -it \
#	-p 5001:5001 \
#	-v /var/run/docker.sock:/var/run/docker.sock \
#	--env DATASTORE_EMULATOR_HOST=192.168.3.6:8000 \
#	gsoc2/gsoc2:backend	
