### list
```
- empty-dir-pod.yaml
- empty-dir-pod2.yaml
```

### commands
```console
kubectl get pods -o=custom-columns=NAME:.metadata.name,CONTAINERS:.spec.containers[*].name,HOST_IP:.status.hostIP,POD_IP:.status.podIP
```
