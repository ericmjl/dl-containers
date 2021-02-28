# dl-containers

I had this suspicion that JAX might be a bit more lightweight
than pytorch and tensorflow when it came to container sizes.
Rather than continue to believe in my own superstitions though,
I decided to benchmark the container sizes.

Following standard installation instructions,
I put together container definition files
for each of the packages independently
to then measure the built container image sizes.

My results are as follows:

```
REPOSITORY                                  TAG            IMAGE ID       CREATED         SIZE
continuumio/miniconda                       latest         b8ea69b5c41c   16 months ago   410MB
dl-containers/jax                           latest         9d413f296ad1   7 minutes ago   1.35GB
```

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
