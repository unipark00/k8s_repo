### list
```
- empty-dir-pod.yaml
- empty-dir-pod2.yaml
```

### commands
```console
kubectl get pods -o=custom-columns=NAME:.metadata.name,CONTAINERS:.spec.containers[*].name, \
        HOST_IP:.status.hostIP,POD_IP:.status.podIP
kubectl describe pods shared-volumes

kubectl get nodes --show-labels
kubectl label nodes k8s-worker2-172-31-0-12 disktype=ssd
```
