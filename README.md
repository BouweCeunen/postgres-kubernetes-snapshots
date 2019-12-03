# postgres-kubernetes-snapshots
Take snapshots of your Postgres cluster in Kubernetes.

Feel free to read about this with some more details on [Medium](https://medium.com/axons/essential-kubernetes-tools-94503209d1cb).

[![DockerHub Badge](https://dockeri.co/image/bouwe/postgres-kubernetes-snapshots)](https://hub.docker.com/r/bouwe/postgres-kubernetes-snapshots)

## Installation
Set the right environment variables in the configmap and secrets.

```
kubectl apply -f kubernetes/
```
