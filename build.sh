#!/bin/bash

IMAGE_NAME=hello-nginx

# Build an image using our content directory as the web content for nginx
docker build -t ${IMAGE_NAME} .
