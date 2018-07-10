#!/bin/bash

docker run \
  -it \
  -p 8888:8888 \
  -p 8000:8000 \
  --mount type=bind,source="$(pwd)/notebooks",target=/notebooks/saved \
  mytf
