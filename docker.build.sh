#!/bin/bash
set -o allexport; source .release.env; set +o allexport

tinygo build -scheduler=none --no-debug \
-o ${WASM_FILE} \
-target wasi main.go

# k33g/small-cow:0.0.0

# docker run -p 8080:8080 --rm -d k33g/small-cow:0.0.0

docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}
docker buildx create --use
docker buildx build -t ${DOCKER_USER}/${IMAGE_BASE_NAME}:${IMAGE_TAG} --platform=linux/arm64,linux/amd64 . --push

docker pull ${DOCKER_USER}/${IMAGE_BASE_NAME}:${IMAGE_TAG}
docker images | grep ${DOCKER_USER}/${IMAGE_BASE_NAME}
