#!/bin/bash

ARCH="amd64"
if [[ "$(uname -m)" == "arm"* ]]; then
  ARCH="arm64"
fi

# /etc/zot would then include config/zot/config.json
docker run -d -p 5000:5000 --restart=always --name registry \
  -v "$(pwd)":/etc/zot/ \
  ghcr.io/project-zot/zot-linux-${ARCH}:latest
