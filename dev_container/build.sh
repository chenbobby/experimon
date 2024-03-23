#!/usr/bin/env bash

set -euv

IMAGE_NAME=experimon

docker build --tag=experimon --file=debian.dockerfile .
