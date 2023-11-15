#!/bin/bash

SUDO_USER=$(/usr/bin/logname)
EXEC_CMD=${@:-/bin/bash}
test -t 1 && USE_INTERACTIVE="--interactive"
test -t 1 && USE_TTY="--tty"

docker container run \
    ${USE_INTERACTIVE} ${USE_TTY} --rm \
    -u $(id -u $SUDO_USER):$(id -g $SUDO_USER) \
    -e DEBIAN_FRONTEND=noninteractive \
    -v `pwd`/:/home/ubuntu/works/ \
    -w /home/ubuntu/works/ \
    ${TAG_NAME:="devkitpro/devkitarm"} \
    ${EXEC_CMD}

