#!/usr/bin/env bash

set -e

version=1.0.8
arch=amd64

# download the release
curl -L -O "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${version}/kubebuilder_${version}_linux_${arch}.tar.gz"

# extract the archive
tar -zxvf kubebuilder_${version}_linux_${arch}.tar.gz
mv kubebuilder_${version}_linux_${arch} kubebuilder

chmod a+x kubebuilder/bin/*
mv kubebuilder/bin/* /usr/local/bin
