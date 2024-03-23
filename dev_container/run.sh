#!/usr/bin/env bash

# Runs a container with the experimon image.
# To start an interactive shell in the container, run: ssh -p 8022 ubuntu@localhost

set -euv

IMAGE_NAME=experimon
CONTAINER_NAME=experimon

docker run --detach --interactive --tty --privileged --name=$CONTAINER_NAME --publish=8022:22 $IMAGE_NAME:latest
