#!/bin/bash

IMAGE="$DOCKER_USERNAME/$IMAGE_TAG"

git clone $GIT_REPOSITORY ./repository
cd repository
docker images
docker build -t $IMAGE .
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
docker push $IMAGE