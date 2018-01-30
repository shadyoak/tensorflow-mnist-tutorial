#!/bin/bash
set -e

# start the container with an interactive bash shell
docker run -it \
	--rm \
	--name tensorflow-mnist-tutorial \
	shadyoak/tensorflow-mnist-tutorial \
	"/bin/bash"
