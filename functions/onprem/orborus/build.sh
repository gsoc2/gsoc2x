NAME=gsoc2-orborus
VERSION=1.3.0

echo "Running docker build with $NAME:$VERSION"
#docker rmi gsoc2/gsoc2:$NAME --force
docker build . -t gsoc2/gsoc2:$NAME -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly -t  ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly

#docker push gsoc2/$NAME:$VERSION
# docker push docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION
docker push gsoc2/gsoc2:$NAME
docker push ghcr.io/gsoc2/$NAME:$VERSION
docker push ghcr.io/gsoc2/$NAME:nightly

docker push gsoc2/gsoc2:$NAME
docker push ghcr.io/gsoc2/$NAME:$VERSION
docker push ghcr.io/gsoc2/$NAME:nightly
