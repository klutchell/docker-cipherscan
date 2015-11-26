FROM ubuntu:15.10
MAINTAINER Rahul Powar email: rahul@redsift.io version: 1.1.101

# Fix for stdin warnings as per https://github.com/mitchellh/vagrant/issues/1673#issuecomment-28287711
RUN sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y python bsdmainutils && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set home
ENV HOME /root

COPY root /

# Define working directory.
WORKDIR /tmp

# Prompt and shell settings
ENV TERM xterm-color

# S6 default entry point is the init added from the overlay
ENTRYPOINT [ "/cipherscan/cipherscan" ]
