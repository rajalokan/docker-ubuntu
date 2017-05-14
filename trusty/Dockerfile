FROM ubuntu:trusty

MAINTAINER rajalokan@gmail.com

RUN \
# Point to use apt-cacher-ng proxy
  echo 'Acquire::HTTP::Proxy "http://${MY_IP}:3142";' >> /etc/apt/apt.conf.d/01proxy \
  && echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

RUN \
# Update & upgrade
  apt-get update \
  && apt-get -y upgrade \
# Install some basic packages
  && DEBIAN_FRONTEND=noninteractive apt-get install -y vim.tiny apt-transport-https

# delete all the apt list files since they're big and get stale quickly
# this forces "apt-get update" in dependent images, which is also good
RUN rm -rf /var/lib/apt/lists/*
