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
#debug1: sshd version OpenSSH_7.6, OpenSSL 1.0.2n  7 Dec 2017
#debug1: private host key #0: ssh-rsa SHA256:K7+Gp7WQlKnKkBali/BAbeW+nSZTnXtr5vtATnt9z9g
#debug1: private host key #1: ecdsa-sha2-nistp256 SHA256:uGQAB+NSkh+Btbc+r+zYF0CJYBG184RuVdQgLQb3sC4
#debug1: private host key #2: ssh-ed25519 SHA256:pIL5lzzt4do7H1gTrj1BcwEXTPsikhz2gLJIJYCgkHc
#Missing privilege separation directory: /run/sshd
