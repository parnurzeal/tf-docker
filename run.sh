#!/bin/bash

docker run \
  -it \
  -p 8888:8888 \
  --mount type=bind,source="$(pwd)",target=/notebooks/saved \
  mytf
