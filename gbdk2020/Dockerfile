FROM amd64/ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV GBDKDIR=/opt/gbdk/

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget bat make busybox libpng-dev libjpeg8-dev libjpeg-dev

RUN wget https://github.com/gbdk-2020/gbdk-2020/releases/download/4.2.0/gbdk-linux64.tar.gz
RUN tar xzf gbdk-linux64.tar.gz -C /opt
RUN rm gbdk-linux64.tar.gz
ENV PATH="/opt/gbdk/bin:$PATH"

ARG WORKSPACE="/home/ubuntu/gbwork"
WORKDIR ${WORKSPACE}

# COMMAND
CMD ["/bin/bash", "--login"]

