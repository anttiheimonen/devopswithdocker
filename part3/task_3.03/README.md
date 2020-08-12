Docker image that clones git repository, builds Dockerfile from root of
the repository and uploads image to Docker Hub.

Usage:

Setting up:

Application takes necessary information from .env file. You need to create it.
.env should contain values DOCKER_USERNAME, DOCKER_PASSWORD, GIT_REPOSITORY and
IMAGE_TAG. For example:

DOCKER_USERNAME=johndoe
DOCKER_PASSWORD=dockerpassword123
GIT_REPOSITORY=https://github.com/example/repo.git
IMAGE_TAG=endtag

In this case the built docker image would be tagged as johndoe/endtag.
Place the .env file in projects root directory where docker-compose.yml
exists too.

Running:

After setup is done, run with command
  docker-compose up
