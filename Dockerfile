FROM gitpod/openvscode-server

USER root

RUN apt-get update && apt-get install -y openssh-server curl

ARG NODE_VERSION=16.14.2

RUN curl -OL https://npmmirror.com/mirrors/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz && \
    tar xvJf node-v$NODE_VERSION-linux-x64.tar.xz && \
    rm node-v$NODE_VERSION-linux-x64.tar.xz && \
    mv node-v$NODE_VERSION-linux-x64 /node

ENV PATH=/node/bin:$PATH

USER openvscode-server