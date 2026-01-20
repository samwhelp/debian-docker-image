#!/usr/bin/env bash




##
## ## Default
##

DEFAULT_TARGET_NAME="debian-iso-builder-respin-xfce"
REF_TARGET_NAME="${REF_TARGET_NAME:=$DEFAULT_TARGET_NAME}"




##
## ## Args
##

REF_TARGET_NAME=${1}
REF_TARGET_NAME="${REF_TARGET_NAME:=$DEFAULT_TARGET_NAME}"




##
## ## create port dir
##

mkdir -p ./port

## work for debootstrap in docker (--privileged)
#podman run -it  -v ./port:/port --rm --replace --privileged --name debian-iso-factory-13-run debian-iso-factory-13 /opt/src/build.sh
podman run -it  -v ./port:/port --replace --privileged --name debian-iso-factory-13-run debian-iso-factory-13 /opt/src/build.sh "${REF_TARGET_NAME}"
