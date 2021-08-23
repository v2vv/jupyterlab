FROM ubuntu:20.04

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    
    gcc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*