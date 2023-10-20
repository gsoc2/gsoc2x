# This can be done in the dockerpush workflow itself
# Done manually for now since GHCR isn't being pushed to easily with the current Github action CI. Nightly = Latest IF we run hotfixes on latest

### Pull latest from ghcr CI/CD
docker pull ghcr.io/gsoc2/gsoc2-app_sdk:nightly
docker pull ghcr.io/gsoc2/gsoc2-worker:nightly
docker pull ghcr.io/gsoc2/gsoc2-orborus:nightly
docker pull ghcr.io/gsoc2/gsoc2-frontend:nightly
#docker pull ghcr.io/gsoc2/gsoc2-backend:nightly
#
### NIGHTLY releases
docker tag ghcr.io/gsoc2/gsoc2-app_sdk:nightly ghcr.io/gsoc2/gsoc2-app_sdk:nightly
docker tag ghcr.io/gsoc2/gsoc2-worker:nightly  ghcr.io/gsoc2/gsoc2-worker:nightly
docker tag ghcr.io/gsoc2/gsoc2-orborus:nightly ghcr.io/gsoc2/gsoc2-orborus:nightly
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:nightly
docker tag ghcr.io/gsoc2/gsoc2-backend:nightly ghcr.io/gsoc2/gsoc2-backend:nightly

docker push ghcr.io/gsoc2/gsoc2-app_sdk:nightly
docker push ghcr.io/gsoc2/gsoc2-worker:nightly
docker push ghcr.io/gsoc2/gsoc2-orborus:nightly
docker push ghcr.io/gsoc2/gsoc2-frontend:nightly
docker push ghcr.io/gsoc2/gsoc2-backend:nightly

### LATEST releases:
## gsoc2/gsoc2 
docker tag ghcr.io/gsoc2/gsoc2-app_sdk:nightly ghcr.io/gsoc2/gsoc2-app_sdk:latest
docker tag ghcr.io/gsoc2/gsoc2-worker:nightly  ghcr.io/gsoc2/gsoc2-worker:latest
docker tag ghcr.io/gsoc2/gsoc2-orborus:nightly ghcr.io/gsoc2/gsoc2-orborus:latest
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:latest
docker tag ghcr.io/gsoc2/gsoc2-backend:nightly ghcr.io/gsoc2/gsoc2-backend:latest

docker push ghcr.io/gsoc2/gsoc2-app_sdk:latest
docker push ghcr.io/gsoc2/gsoc2-worker:latest
docker push ghcr.io/gsoc2/gsoc2-orborus:latest
docker push ghcr.io/gsoc2/gsoc2-frontend:latest
docker push ghcr.io/gsoc2/gsoc2-backend:latest

## gsoc2/gsoc2
docker tag ghcr.io/gsoc2/gsoc2-app_sdk:nightly ghcr.io/gsoc2/gsoc2-app_sdk:latest
docker tag ghcr.io/gsoc2/gsoc2-worker:nightly  ghcr.io/gsoc2/gsoc2-worker:latest
docker tag ghcr.io/gsoc2/gsoc2-orborus:nightly ghcr.io/gsoc2/gsoc2-orborus:latest
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:latest
docker tag ghcr.io/gsoc2/gsoc2-backend:nightly ghcr.io/gsoc2/gsoc2-backend:latest

docker push ghcr.io/gsoc2/gsoc2-app_sdk:latest
docker push ghcr.io/gsoc2/gsoc2-worker:latest
docker push ghcr.io/gsoc2/gsoc2-orborus:latest
docker push ghcr.io/gsoc2/gsoc2-frontend:latest
docker push ghcr.io/gsoc2/gsoc2-backend:latest


### 1.1.0 releases:
## gsoc2/gsoc2
docker tag ghcr.io/gsoc2/gsoc2-app_sdk:nightly ghcr.io/gsoc2/gsoc2-app_sdk:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-worker:nightly  ghcr.io/gsoc2/gsoc2-worker:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-orborus:nightly ghcr.io/gsoc2/gsoc2-orborus:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-backend:nightly ghcr.io/gsoc2/gsoc2-backend:1.1.0

docker push ghcr.io/gsoc2/gsoc2-app_sdk:1.1.0
docker push ghcr.io/gsoc2/gsoc2-worker:1.1.0
docker push ghcr.io/gsoc2/gsoc2-orborus:1.1.0
docker push ghcr.io/gsoc2/gsoc2-frontend:1.1.0
docker push ghcr.io/gsoc2/gsoc2-backend:1.1.0

## gsoc2/gsoc2
docker tag ghcr.io/gsoc2/gsoc2-app_sdk:nightly 	ghcr.io/gsoc2/gsoc2-app_sdk:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-worker:nightly  	ghcr.io/gsoc2/gsoc2-worker:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-orborus:nightly 	ghcr.io/gsoc2/gsoc2-orborus:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-frontend:nightly ghcr.io/gsoc2/gsoc2-frontend:1.1.0
docker tag ghcr.io/gsoc2/gsoc2-backend:nightly 	ghcr.io/gsoc2/gsoc2-backend:1.1.0

docker push ghcr.io/gsoc2/gsoc2-app_sdk:1.1.0
docker push ghcr.io/gsoc2/gsoc2-worker:1.1.0
docker push ghcr.io/gsoc2/gsoc2-orborus:1.1.0
docker push ghcr.io/gsoc2/gsoc2-frontend:1.1.0
docker push ghcr.io/gsoc2/gsoc2-backend:1.1.0

### Manage worker-scale upload (Requires auth)
# This is supposed to be unavailable, and only be downloadable by customers 
docker pull ghcr.io/gsoc2/gsoc2-worker-scale:latest
docker save ghcr.io/gsoc2/gsoc2-worker-scale:latest -o gsoc2-worker.zip
echo "1. Upload gsoc2-worker.zip to the gsoc2r.io public repo. If in Github Dev env, download the file, and upload manually."
echo "2. Have customers download it with: $ wget URL"
echo "3. Have customers use with with: docker load gsoc2-worker.zip"

