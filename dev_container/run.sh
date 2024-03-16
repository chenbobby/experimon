#!/usr/bin/env bash

# Runs a container with the experimon image.
# To start an interactive shell in the container, run: ssh -p 8022 ubuntu@localhost

set -euv

CONTAINER_NAME=experimon

docker run --detach --interactive --tty --name=$CONTAINER_NAME --publish=8022:22 experimon:latest
