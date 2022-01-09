#!/usr/bin/env bash

set -e

curl -o clusterctl -L https://github.com/kubernetes-sigs/cluster-api/releases/download/v1.0.2/clusterctl-linux-amd64

chmod a+x ./clusterctl

mv ./clusterctl /usr/local/bin

# clusterctl generate cluster capi-quickstart --flavor development-topology \
#   --kubernetes-version v1.23.0 \
#   --control-plane-machine-count=3 \
#   --worker-machine-count=3 \
#   > capi-quickstart.yaml