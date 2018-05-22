#!/bin/sh

# <qemu-support>
if [ "$QEMU_ARCH" = 'amd64' ]; then
  touch qemu-amd64-static
else
  curl -sL "https://github.com/multiarch/qemu-user-static/releases/download/${QEMU_VERSION}/qemu-${QEMU_ARCH}-static.tar.gz" | tar xz
  docker run --rm --privileged multiarch/qemu-user-static:register
fi
# </qemu-support>

export IMAGE_ID="${IMAGE}:${VERSION}-${TAG}"
docker build -t ${IMAGE_ID} --build-arg target=$TARGET .

