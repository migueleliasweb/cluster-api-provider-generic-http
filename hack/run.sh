#!/usr/bin/env bash

docker run -it --rm --entrypoint ${ENTRYPOINT} cluster-api-provider-generic-http ${CMD}