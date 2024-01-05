NAME=gsoc2-worker
VERSION=1.3.0

echo "Running docker build with $NAME:$VERSION"
#CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o worker.bin .
docker build . -t gsoc2/gsoc2:$NAME -t gsoc2/gsoc2:$NAME_$VERSION -t docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly -t ghcr.io/gsoc2/$NAME:$VERSION -t ghcr.io/gsoc2/$NAME:nightly

# Push both for now..
#docker push gsoc2/$NAME:$VERSION 
#docker push gsoc2/gsoc2:$NAME_$VERSION
#docker push docker.pkg.github.com/gsoc2/gsoc2/$NAME:$VERSION
#docker tag gsoc2/gsoc2:0.8.51 ghcr.io/gsoc2/gsoc2-worker:0.8.5
#docker tag gsoc2/gsoc2:$NAME ghcr.io/gsoc2/gsoc2-worker:0.8.52
#docker push gsoc2/gsoc2:$NAME
#docker push ghcr.io/gsoc2/$NAME:$VERSION
#docker push ghcr.io/gsoc2/$NAME:nightly
#
#docker push gsoc2/gsoc2:$NAME
#docker push ghcr.io/gsoc2/$NAME:$VERSION
#docker push ghcr.io/gsoc2/$NAME:nightly
