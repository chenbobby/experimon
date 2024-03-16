#!/usr/bin/env bash

set -euv

docker build --tag=experimon:latest --file=experimon.dockerfile .
