# Run
go run main.go walkoff.go docker.go

## Modify
- Make sure it's connected with the latest version of the gsoc2-shared library, which is used to get resources from Gsoc2

## Database
- The database is Opensearch and can be modified with the GSOC2_OPENSEARCH_URL environment variable. See .env in the root directory for more. This requires Opensearch to be running (typically started from docker-compose.yml)
```
docker-compose up -d
docker stop gsoc2-backend
docker stop gsoc2-frontend
docker stop gsoc2-orborus
```

## Caching
- To handle caching, it by default runs it in memory of the application itself. If you want to offload this, it can be done using the GSOC2_MEMCACHED environment variable, connecting to a memcached instance. 
```
docker run --name gsoc2-cache -p 11211:11211 -d memcached -m 1024
```
