FROM ubuntu:16.04

LABEL maintainer="Nate Morse <nathan@shadyoaksoftware.com>"

ENV WORKDIR="tensorflow-mnist-tutorial"

# install project dependencies
RUN apt-get update \
	&& apt-get install --no-install-suggests -y \
		git \
		nano \
		python3 \
		python3-matplotlib \
		python3-pip \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install tensor flow 
RUN pip3 install --upgrade pip \
	&& pip3 install --upgrade tensorflow \
	&& pip3 install --upgrade matplotlib

# add the patches directory
COPY patches patches

# clone the tutorial repo
RUN git clone "https://github.com/martin-gorner/tensorflow-mnist-tutorial.git"

# patch the mnist_1.0_softmax.py script to disable animations
# RUN cd "${WORKDIR}" \
# 	&& patch -N -p1 < "/patches/mnist_1.0_softmax.py.patch"

WORKDIR "${WORKDIR}"

CMD ["python3", "mnist_1.0_softmax.py"]
