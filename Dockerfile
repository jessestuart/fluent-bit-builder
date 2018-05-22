ARG target
FROM $target/debian as builder

COPY qemu-* /usr/bin/

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt update -yq && \
  apt install -yq \
    build-essential \
    cmake \
    libasl-dev \
    libssl1.0-dev \
    libsystemd-dev \
    make \
    unzip \
    wget
