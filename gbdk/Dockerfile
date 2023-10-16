FROM arm32v7/debian

ENV DEBIAN_FRONTEND=noninteractive
ENV GBDKDIR=/opt/gbdk/

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vim make libpng-dev curl bat bash-completion

RUN curl -o gbdk-2.96a-raspberry_pi.tar.gz -L https://cubic-style.jp/download/gbdk-2-96-for-raspberry-pi/?tmstv=1693459521
RUN tar xf gbdk-2.96a-raspberry_pi.tar.gz -C /opt
RUN ln -s /opt/gbdk/ /usr/local/
RUN rm gbdk-2.96a-raspberry_pi.tar.gz
ENV PATH="/opt/gbdk/bin:$PATH"

ARG WORKSPACE="/home/ubuntu/gbwork"
WORKDIR ${WORKSPACE}

# COMMAND
CMD ["/bin/bash", "--login"]

