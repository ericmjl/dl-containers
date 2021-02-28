FROM continuumio/miniconda

COPY --chown=root:root environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
