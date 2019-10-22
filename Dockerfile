# Base Image
FROM ubuntu:latest

# Maintainer
LABEL maintainer "SW"

# Install for ctag, make, gcc, git
RUN apt-get -y update
RUN apt-get -y install ctags make gcc vim

# Download opensource for data structure and algorithm
#RUN git clone https://github.com/swgu931/opensource-datastructure-algorithm
COPY ./ /home/

# Entrypoint
ENTRYPOINT ["bin/bash", "-c", "echo 'Welcome to the Environment for Algorithm : made by SW' "]
