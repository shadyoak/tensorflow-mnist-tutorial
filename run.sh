#!/bin/bash
set -e

export HOSTNAME="$(hostname)"

# start the container with an interactive bash shell
docker run -it \
	--rm \
	-e "DISPLAY=${HOSTNAME}:0" \
	--name tensorflow-mnist-tutorial \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	shadyoak/tensorflow-mnist-tutorial \
	"/bin/bash"
