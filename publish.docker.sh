#!/bin/bash
IMAGE_NAME="small-cow"

docker tag ${IMAGE_NAME} ${DOCKER_USER}/${IMAGE_NAME}:0.0.0
docker push ${DOCKER_USER}/${IMAGE_NAME}:0.0.0

# k33g/small-cow:0.0.0

# docker run -p 8080:8080 --rm -d k33g/small-cow:0.0.0