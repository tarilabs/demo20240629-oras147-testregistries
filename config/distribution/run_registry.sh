#!/bin/bash

docker run -d -p 5000:5000 --restart=always --name registry \
  -v "$(pwd)":/config/distribution \
  -v "$(pwd)"/config.yml:/etc/docker/registry/config.yml \
  ghcr.io/oras-project/registry:latest
