#!/bin/bash

docker build --tag=groveriffic/controller .

WORK_DIR=/home/groveriffic/controller

docker run \
  --rm \
  --volume=$(pwd):$WORK_DIR \
  --workdir $WORK_DIR/Keyboards \
  groveriffic/controller \
  ./ergodox.bash
