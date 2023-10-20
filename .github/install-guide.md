# Installation guide
Installation of Gsoc2 is currently only available in docker. Looking for how to update Gsoc2? Check the [updating guide](https://gsoc2r.io/docs/configuration#updating_gsoc2)

This document outlines a an introduction environment which is not scalable. [Read here](https://gsoc2r.io/docs/configuration#production_readiness) for information on production readiness. This also includes system requirements and configurations for Swarm or Kubernetes. 

# Docker - *nix
The Docker setup is done with docker-compose 

**PS: if you're setting up Gsoc2 on Windows, go to the next step (Windows Docker setup)**

1. Make sure you have [Docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) installed.
2. Download Gsoc2
```bash
git clone https://github.com/Gsoc2/Gsoc2
cd Gsoc2
```

3. Fix prerequisites for the Opensearch database (Elasticsearch): 
```bash
mkdir gsoc2-database                    # Create a database folder
sudo chown -R 1000:1000 gsoc2-database  # IF you get an error using 'chown', add the user first with 'sudo useradd opensearch'

sudo swapoff -a                           # Disable swap
```

4. Run docker-compose.
```bash
docker-compose up -d
```

5. Recommended for Opensearch to work well
```bash
sudo sysctl -w vm.max_map_count=262144             # https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html
```

When you're done, skip to the [After installation](#after-installation) step below.

## Windows with WSL  
This step is for setting up with Docker on windows from scratch.

1. Make sure you have [Docker](https://docs.docker.com/docker-for-windows/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed. WSL2 may be required.

2. Go to https://github.com/gsoc2/gsoc2/releases and download the latest .zip release (or install git)

3. Unzip the folder and enter it

4. Open the .env file and change the line with "OUTER_HOSTNAME" to contain your IP:

```bash
OUTER_HOSTNAME=YOUR.IP.HERE
```

6. Run docker-compose
```bash
docker-compose up -d
```

### Configurations (proxies, default users etc.)
https://gsoc2r.io/docs/configuration

### After installation 
1. After installation, go to http://localhost:3001 (or your servername - https is on port 3443)
2. Now set up your admin account (username & password). Gsoc2 doesn't have a default username and password. 
3. Sign in with the same Username & Password! Go to /apps and see if you have any apps yet. If not - you may need to [configure proxies](https://gsoc2r.io/docs/configuration#production_readiness)
4. Check out https://gsoc2r.io/docs/configuration as it has a lot of useful information to get started

![Admin account setup](https://github.com/Gsoc2/Gsoc2/blob/main/frontend/src/assets/img/gsoc2_adminaccount.png?raw=true)

### Useful info
* Check out [getting started](https://gsoc2r.io/docs/getting_started)
* The default state of Gsoc2 is NOT scalable. See [production setup](https://gsoc2r.io/docs/configuration#production_readiness) for more info
* The server is available on http://localhost:3001 (or your servername)
* Further configurations can be done in docker-compose.yml and .env.
* Default database location is in the same folder: ./gsoc2-database

# Local development installation

Local development is pretty straight forward with **ReactJS** and **Golang**. This part is intended to help you run the code for development purposes. We recommend having Gsoc2 running with the Docker-compose, then manually running the portion that you want to test and/or edit.

**PS: You have to stop the Backend Docker container to get this one working**

**PPS: Use the "Launch" branch when developing to get it set up easier**

## Frontend - ReactJS /w cytoscape
http://localhost:3000 - Requires [npm](https://nodejs.org/en/download/)/[yarn](https://yarnpkg.com/lang/en/docs/install/#debian-stable)/your preferred manager. Runs independently from backend.
```bash
cd frontend
npm i
npm start
```

## Backend - Golang
http://localhost:5001 - REST API - requires [>=go1.13](https://golang.org/dl/)
```bash
export GSOC2_OPENSEARCH_URL="https://localhost:9200"
export GSOC2_ELASTIC=true
export GSOC2_OPENSEARCH_USERNAME=admin
export GSOC2_OPENSEARCH_PASSWORD=admin
export GSOC2_OPENSEARCH_SKIPSSL_VERIFY=true
cd backend/go-app
go run main.go walkoff.go docker.go
```
**WINDOWS USERS:** Follow [this guide](https://www.wikihow.com/Create-an-Environment-Variable-in-Windows-10) to add environment variables in your machine.

Large portions of the backend is written in another repository - [gsoc2-shared](https://github.com/gsoc2/gsoc2-shared). If you want to update any of this code and test in realtime, we recommend following these steps:
1. Clone gsoc2-shared to a local repository
2. Open the Gsoc2 backend's go.mod file (./gsoc2/backend/go.mod)  (**NOT** in gsoc2-shared)
3. Change the following line to point to your directory AFTER the =>
```
//replace github.com/gsoc2/gsoc2-shared => ../../../../git/gsoc2-shared
```
4. Make the changes you want, then restart the backend server!
5. With your changes made, make a pull request :fire:

## Database - Opensearch 
Make sure this is running through the docker-compose, and that the backend points to it with GSOC2_OPENSEARCH_URL defined

## Orborus
Execution of Workflows:
PS: This requires some specific environment variables
```
cd functions/onprem/orborus
go run orborus.go
```

Environments (modify for Windows):
```
export ORG_ID=Gsoc2
export ENVIRONMENT_NAME=Gsoc2
export BASE_URL=http://YOUR-IP:5001
export DOCKER_API_VERSION=1.40
```

AND THAT's it - hopefully it worked. If it didn't please email [gsoc2@gsoc2r.io](mailto:gsoc2@gsoc2r.io)
