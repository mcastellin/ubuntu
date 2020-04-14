FROM ubuntu:18.04
LABEL maintainer="manuel@castellinconsulting.com"

# Install useful tools
RUN apt-get update &&\
        apt-get install -y \
        vim \
        less \
        locate \
        &&\
        rm -rf /var/lib/apt/lists/*

