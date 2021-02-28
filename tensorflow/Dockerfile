FROM continuumio/miniconda

COPY --chown=root:root environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
RUN /opt/conda/envs/tensorflow-container/bin/pip install tensorflow
