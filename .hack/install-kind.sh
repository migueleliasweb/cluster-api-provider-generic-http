#!/usr/bin/env bash

set -e

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64 && \
chmod +x ./kind && \
mv ./kind /home/miguel/Bin