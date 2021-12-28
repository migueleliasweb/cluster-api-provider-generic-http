#!/usr/bin/env bash

if [ -z "${ENTRYPOINT}" ]; then
    echo "The variable 'ENTRYPOINT' is required."
    exit 1
fi

if [ -z "${CMD}" ]; then
    docker run -it --rm \
        -v ${PWD}:/opt/cluster-api-provider-generic-http \
        --entrypoint "${ENTRYPOINT}" \
        cluster-api-provider-generic-http
else
    docker run -it --rm \
        -v ${PWD}:/opt/cluster-api-provider-generic-http \
        --entrypoint "${ENTRYPOINT}" \
        cluster-api-provider-generic-http "${CMD}"
fi