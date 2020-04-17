# Docker build from Ubuntu Bionic 18.04
FROM ubuntu:18.04
LABEL maintainer="manuel@castellinconsulting.com"

# Install useful tools
# hadolint ignore=DL3008
RUN apt-get update &&\
        apt-get install -y --no-install-recommends \
        man \
        info \
        vim \
        less \
        locate \
        openssh-server \
        &&\
        rm -rf /var/lib/apt/lists/*

RUN mkdir /home/ubuntu &&\
        groupadd -r ubuntu -g 999 &&\
        useradd -u 999 -g ubuntu -d /home/ubuntu -s /sbin/nologin -c "Ubuntu user" ubuntu &&\
        chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu

#CMD ["/bin/bash"]
CMD ["/usr/sbin/sshd -D $SSHD_OPTS"]
