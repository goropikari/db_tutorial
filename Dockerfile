FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y build-essential vim git less tree

RUN useradd -m -s /bin/bash -N -u 1000 ubuntu
USER ubuntu
WORKDIR /home/ubuntu
