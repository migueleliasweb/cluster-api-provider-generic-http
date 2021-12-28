# HACK

## Build

```
./hack/build.sh
```

## Run commands inside the docker image (with volume mounts)

```
ENTRYPOINT="kubebuilder" \
CMD="init --domain cluster.x-k8s.io" \
./hack/run.sh
```