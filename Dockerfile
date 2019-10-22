# Base Image
FROM ubuntu:latest

# Install for ctag, make, gcc, git
RUN apt-get -y update
RUN apt-get -y install ctag make gcc git vim

# Download opensource for data structure and algorithm
RUN git clone https://github.com/swgu931/opensource-datastructure-algorithm

# Entrypoint
ENTRYPOINT ["bin/bash", "-c", "echo 'Welcome to the Environment for Algorithm : made by SW' "]
