#!/bin/bash

IMAGE_NAME=hello-nginx
CONTAINER_NAME=hello-nginx

# Create a container from the image
docker rm -f ${CONTAINER_NAME}      # stop and remove old container
docker create --name ${CONTAINER_NAME} -p 8080:80 ${IMAGE_NAME}

# Start the container
docker container start ${CONTAINER_NAME}
