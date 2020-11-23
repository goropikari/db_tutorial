FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential gdb ruby vim git less tree

ENV HOME=/home/ubuntu \
    GEM_HOME=/home/ubuntu/.ruby \
    PATH=$PATH:/home/ubuntu/.ruby/bin

RUN useradd -m -s /bin/bash -N -u 1000 ubuntu
USER ubuntu
WORKDIR /home/ubuntu
COPY Gemfile /home/ubuntu/
RUN gem install bundler && bundle install


