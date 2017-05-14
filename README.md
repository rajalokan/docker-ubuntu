## rajalokan/ubuntu Dockerfile


This repository contains **Dockerfile** of my opionated [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/ubuntu/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/ubuntu/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/ubuntu`

   (alternatively, you can build an image from Dockerfile: `docker build -t="rajalokan/ubuntu" github.com/dockerfile/ubuntu`)


### Usage

    docker run -it --rm rajalokan/ubuntu

[![Circle CI](https://circleci.com/gh/sameersbn/docker-ubuntu.svg?style=svg)](https://circleci.com/gh/sameersbn/docker-ubuntu) [![Docker Repository on Quay.io](https://quay.io/repository/sameersbn/ubuntu/status "Docker Repository on Quay.io")](https://quay.io/repository/sameersbn/ubuntu)

# About

Dockerfile to build a ubuntu:14.04 baseimage with a couple of extra packages.

The image is built on top of the most recently tagged `ubuntu:14.04` image and installs the following extra packages:

- `vim.tiny`
- `wget`
- `sudo`
- `net-tools`
- `ca-certificates`
- `unzip`

The packages are selected based on the criteria that they are commonly used and that they do not influence the size of the resulting image too much.

Additionally `apt` is configured to **NOT** install `recommended` and `suggested` packages.
