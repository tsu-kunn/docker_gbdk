FROM arm64v8/ubuntu:22.04

ENV https_proxy='http://proxy.nanao.co.jp:8080/'
ENV http_proxy='http://proxy.nanao.co.jp:8080/'

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y upgrade
RUN apt install -y git sudo wget curl

RUN git clone https://github.com/pspdev/pspdev.git
RUN apt install -y git gzip libarchive-dev libcurl4 libcurl4-openssl-dev libelf-dev libgpgme-dev libncurses5-dev libreadline-dev libssl-dev   libtool-bin libusb-dev m4 make patch pkg-config python3 python3-venv subversion tar tcl texinfo unzip wget xz-utils   sudo fakeroot libarchive-tools curl libgmp3-dev libmpfr-dev libmpc-dev python3-pip autoconf automake bison bzip2 cmake doxygen flex g++ gcc

ENV PSPDEV=/usr/local/pspdev
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/pspdev/bin

RUN cd /etc && ln -sf ../proc/self/mounts mtab
RUN cd pspdev && ./build-all.sh
RUN cd / && rm -rf pspdev

ARG WORKSPACE="/home/ubuntu/pspwork"
WORKDIR ${WORKSPACE}

