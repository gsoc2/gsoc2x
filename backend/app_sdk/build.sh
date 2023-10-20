#!/bin/bash

### DEFAULT 
NAME=gsoc2-app_sdk
VERSION=1.2.0

docker rmi docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION --force
docker build . -f Dockerfile -t gsoc2/gsoc2:app_sdk -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly -t gsoc2/gsoc2:app_sdk -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly

docker push gsoc2/gsoc2:app_sdk
docker push ghcr.io/gsoc2/$NAME:$VERSION
docker push ghcr.io/gsoc2/$NAME:nightly
docker push ghcr.io/gsoc2/$NAME:latest

docker push gsoc2/gsoc2:app_sdk
docker push ghcr.io/gsoc2/$NAME:$VERSION
docker push ghcr.io/gsoc2/$NAME:nightly
docker push ghcr.io/gsoc2/$NAME:latest




#### UBUNTU
NAME=gsoc2-app_sdk_ubuntu
docker build . -f Dockerfile_ubuntu -t gsoc2/gsoc2:app_sdk_ubuntu -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION
docker push gsoc2/gsoc2:app_sdk_ubuntu
docker push ghcr.io/gsoc2/$NAME:$VERSION

#### Alpine GRPC 
NAME=gsoc2-app_sdk_grpc
docker build . -f Dockerfile_alpine_grpc -t gsoc2/gsoc2:app_sdk_grpc -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION
docker push gsoc2/gsoc2:app_sdk_grpc
docker push ghcr.io/gsoc2/$NAME:$VERSION



#### KALI ###
#NAME=gsoc2-app_sdk_kali
#docker build . -f Dockerfile_kali -t gsoc2/gsoc2:app_sdk_kali -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION
#
#docker push gsoc2/gsoc2:app_sdk_kali
#docker push ghcr.io/gsoc2/$NAME:$VERSION
#docker push ghcr.io/gsoc2/$NAME:nightly

### BLACKARCH ###
#NAME=gsoc2-app_sdk_blackarch
#docker build . -f Dockerfile_blackarch -t gsoc2/gsoc2:app_sdk_blackarch -t gsoc2/$NAME:$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION
#
#docker push gsoc2/gsoc2:app_sdk_blackarch
#docker push ghcr.io/gsoc2/$NAME:$VERSION
#docker push ghcr.io/gsoc2/$NAME:nightly
