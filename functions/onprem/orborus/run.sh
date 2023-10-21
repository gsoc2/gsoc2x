#docker run \
#	--env DOCKER_API_VERSION=1.40 \
#	--env ENVIRONMENT_NAME="Gsoc2" \
#	--env BASE_URL="http://192.168.86.45:5001" \
#	--env HTTP_PROXY="http://192.168.86.45:8082" \
#	--env HTTPS_PROXY="https://192.168.86.45:8082" \
#	--env GSOC2_PASS_WORKER_PROXY=true \
#	--env GSOC2_PASS_APP_PROXY=true \
#	-v /var/run/docker.sock:/var/run/docker.sock \
#	ghcr.io/gsoc2/gsoc2-orborus:nightly

docker run \
	--env DOCKER_API_VERSION=1.40 \
	--env ENVIRONMENT_NAME="Another env" \
	--env ORG="2e7b6a08-b63b-4fc2-bd70-718091509db1" \
	--env AUTH="env auth" \
	--env BASE_URL="https://soc2.khulnasoft.com" \
	-v /var/run/docker.sock:/var/run/docker.sock \
	ghcr.io/gsoc2/gsoc2-orborus:nightly
