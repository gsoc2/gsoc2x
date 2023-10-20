#!/bin/sh
docker stop gsoc2-frontend
docker rm gsoc2-frontend
#docker rmi ghcr.io/gsoc2/gsoc2-frontend:nightly

echo "Running build for website"
#sudo npm run build
docker build . -t ghcr.io/gsoc2/gsoc2-frontend:nightly
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:nightly

echo "Starting server"
# Rerun build locally for it to update :)
#docker run -it \
#	-p 3001:80 \
#	-p 3002:443 \
#	-v $(pwd)/build:/usr/share/nginx/html:ro \
#	--rm \
#	nginx	
