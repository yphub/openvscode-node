FROM gitpod/openvscode-server

USER root

RUN apt-get update && apt-get install -y openssh-server curl

RUN apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get install -y python3.8

USER openvscode-server