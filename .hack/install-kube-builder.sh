#!/usr/bin/env bash

set -e

version=3.2.0
arch=amd64

# download the release
curl -L -O "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${version}/kubebuilder_linux_${arch}"

chmod a+x kubebuilder_linux_${arch}
mv kubebuilder_linux_${arch} /usr/local/bin/kube-builder
