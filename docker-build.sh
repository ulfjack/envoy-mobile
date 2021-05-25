#!/usr/bin/env bash
set -e

# docker build . \
#     --memory 16g \
#     --memory-swap -1 \
#     --tag envoy-requests-builder

# rm -f wheel/*
docker run \
    --rm \
    -v $(pwd)/wheel:/wheel \
    -it envoy-requests-builder \
    bash
