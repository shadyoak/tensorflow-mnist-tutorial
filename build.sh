#!/bin/bash
set -e

# build the docker image
docker build \
	--tag shadyoak/tensorflow-mnist-tutorial \
	.
