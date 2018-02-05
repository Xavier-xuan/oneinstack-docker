FROM ubuntu:16.04

LABEL version="1.0.0"

MAINTAINER Seth mail@imseth.cn

RUN apt-get update && \
    apt-get -y install git wget curl python

ADD ./oneinstack /oneinstack

#Clean up
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /oneinstack

VOLUME ["/data"]

EXPOSE 80 443 3306 6379

ENTRYPOINT tail -f /etc/hosts

