#!/bin/bash

IMAGE_NAME=hello-nginx
CONTAINER_NAME=hello-nginx

docker rm -f ${CONTAINER_NAME}
docker create --name ${CONTAINER_NAME} -p 8080:80 ${IMAGE_NAME}

docker container start ${CONTAINER_NAME}

docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}
