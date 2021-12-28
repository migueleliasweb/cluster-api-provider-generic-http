#!/usr/bin/env bash

if [ -z "${ENTRYPOINT}" ]; then
    echo "The variable 'ENTRYPOINT' is required."
    exit 1
fi

if [ -z "${CMD}" ]; then
    echo "The variable 'CMD' is required."
    exit 1
fi

docker run -it --rm \
    -v ${PWD}:. \
    --entrypoint "${ENTRYPOINT}" \
    cluster-api-provider-generic-http "${CMD}"