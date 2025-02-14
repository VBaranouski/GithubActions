#!/bin/bash

# Define varaibles for docker image, container and port number
DOCKER_IMAGE="docker_hello"
DOCKER_CONTAINER="privet_sdl"
PORT_NUMBER="8090"

# Check the docker version and status
docker --version || { echo "Docker is not installed"; exit 1; }
systemctl is-active --quiet docker || { echo "Docker is not running"; exit 1; }

# Check running container
# If container is runnin, do stop then remove it. Then remove the docker image

docker ps -q --filter "name=$DOCKER_CONTAINER" | grep -q . && docker stop "$DOCKER_CONTAINER"
docker rm -f "$DOCKER_CONTAINER"
docker rmi -f "$DOCKER_IMAGE" || echo "No image to remove"

# Create Docker image with 
# cd "$REPO_DIR" && 
docker build -t "$DOCKER_IMAGE" .

# Run the docker container
docker run -d --name "$DOCKER_CONTAINER" -p $PORT_NUMBER:80 "$DOCKER_IMAGE"
docker ps -q --filter "name=$DOCKER_CONTAINER" | grep -q . && echo "Container is up and running on PORT: "$PORT_NUMBER" "
curl localhost:$PORT_NUMBER
