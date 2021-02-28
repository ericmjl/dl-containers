# dl-containers

I had this suspicion that JAX might be a bit more lightweight
than pytorch and tensorflow when it came to container sizes.
Rather than continue to believe in my own superstitions though,
I decided to benchmark the container sizes.

Following standard installation instructions,
I put together container definition files
for each of the packages independently
to then measure the built container image sizes.

My results are as follows, including the base `miniconda` container:

```
REPOSITORY                                  TAG            IMAGE ID       CREATED         SIZE
continuumio/miniconda                       latest         b8ea69b5c41c   16 months ago   410MB
dl-containers/jax                           latest         9d413f296ad1   7 minutes ago   1.35GB
dl-containers/pytorch                       latest         1d987ebbd439   4 minutes ago   2.43GB
```

On DockerHub, my compressed container sizes are:

- [`jax`][jaxcontainer]: 468.05 MB
- [`pytorch`][pytorchcontainer]: 956.85 MB
- [`tensorflow`][tensorflowcontainer]: 1.21 GB

[jaxcontainer]: https://hub.docker.com/repository/docker/ericmjl/jax-container/tags?page=1&ordering=last_updated
[pytorchcontainer]: https://hub.docker.com/repository/docker/ericmjl/pytorch-container/tags?page=1&ordering=last_updated
[tensorflowcontainer]: https://hub.docker.com/repository/docker/ericmjl/tensorflow-container/tags?page=1&ordering=last_updated

## Reproducing the exercise

You can reproduce this benchmarking exercise by running the command:

```bash
make all
```

If you want to run the builds individually:

```bash
make jax
make pytorch
make tensorflow
```
