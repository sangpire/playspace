#!/usr/bin/env bash
set -e

if [ "_$1" == "_build" ]; then
  PLAYSPACE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  docker build --force-rm=true --rm=true -t playspace:latest $PLAYSPACE_DIR
else
  docker run -ti --rm -v $PWD:/play playspace:latest /bin/bash
fi
