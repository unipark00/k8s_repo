### commands
kubectl get pods -o=custom-columns=NAME:.metadata.name,CONTAINERS:.spec.containers[*].name, \
        HOST_IP:.status.hostIP,POD_IP:.status.podIP
kubectl describe pods shared-volumes

kubectl label nodes <your-node-name> disktype=ssd
kubectl get nodes --show-labels
kubectl label nodes k8s-worker1-172-31-0-11 disktype=scsi
kubectl label nodes k8s-worker2-172-31-0-12 disktype=ssd
