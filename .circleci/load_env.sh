#!/bin/sh

# Declare these up here for the sake of clarity; but they won't be persisted
# between `run:` commands without the `$BASH_ENV` dance.
export IMAGE="jessestuart/fluent-bit-builder"
export VERSION="$(date -u +'%Y%m%d')"

echo "export IMAGE=${IMAGE}" >> $BASH_ENV
echo "export VERSION=${VERSION}" >> $BASH_ENV
echo 'export IMAGE_ID="${IMAGE}:${VERSION}-${TAG}"' >> $BASH_ENV
echo 'export DIR=`pwd`' >> $BASH_ENV

source $BASH_ENV
