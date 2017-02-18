FROM ubuntu
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y python bsdmainutils python-six git && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*
COPY root /
ENV TERM xterm-color
ENTRYPOINT [ "/cipherscan/cipherscan" ]
