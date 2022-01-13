FROM ubuntu:20.04

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    python3  \
    python3-pip &&\
    apt-get clean && rm -rf /var/lib/apt/lists/* &&\
    pip3 install jupyterlab &&\
    
CMD jupyter-lab --allow-root --ip 0.0.0.0
