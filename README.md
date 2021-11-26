# README

This is a simple example of using Docker to setup an `nginx` web server running in a container on your local machine.

```shell
IMAGE_NAME=hello-nginx
CONTAINER_NAME=hello-nginx

# Build an image using our content directory as the web content for nginx
docker build -t ${IMAGE_NAME} .

# Create a container from the image
docker rm -f ${CONTAINER_NAME}                                  # stop and remove old container
docker create --name ${CONTAINER_NAME} -p 8080:80 ${IMAGE_NAME}

# Start the container
docker container start ${CONTAINER_NAME}

# At this point you can open http://localhost:8080 in your browser to test it out
# You should see the message "I'm running in a container!!!"

# To stop the container, run
docker stop ${CONTAINER_NAME}
```
