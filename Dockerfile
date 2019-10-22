# Base Image
FROM ubuntu:latest

# Maintainer
LABEL maintainer "SW"

# Install for ctag, make, gcc, git
RUN apt-get -y update
RUN apt-get -y install ctags make gcc vim

# Configuration
ENV SOURCE_DIR=source \
    USER=oda
    
# Download opensource for data structure and algorithm
#RUN git clone https://github.com/swgu931/opensource-datastructure-algorithm
COPY ./ /home/$USER/$SOURCE_DIR

# Entrypoint
ENTRYPOINT ["bin/bash", "-c", "echo 'Welcome to the Environment for Algorithm : made by SW' "]
