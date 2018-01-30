### Tensorflow MNIST Tutorial

This is a Docker file for Martin Gorner's "[Tensorflow and deep learning, without a PhD](https://github.com/martin-gorner/tensorflow-mnist-tutorial)" presentation and code lab.

NOTE: Because the code lab expects a graphical user interface, the sample scripts must be modified to ignore the animation code. This Docker image ONLY patches the first script in the series: `mnist_1.0_softmax.py`. Additional script patching is left as an exercise for the reader. See [this](https://github.com/martin-gorner/tensorflow-mnist-tutorial/issues/54#issuecomment-312585932) GitHub issue comment for more details.

#### Build

To build this image:

`./build.sh`

#### Usage

To run this image:

`./run.sh`

With the image running, you may now run the sample code. For example:

`python3 mnist_1.0_softmax.py`

#### License

[MIT License](https://github.com/shadyoak/tensorflow-mnist-tutorial/blob/master/LICENSE)
