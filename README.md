### alias
```console
kubectl get pods -o=custom-columns=NAME:.metadata.name,CONTAINERS:.spec.containers[*].name,HOST_IP:.status.hostIP,POD_IP:.status.podIP
kubectl get pods --output json | jq --raw-output '.items[].spec.containers[].name'
kubectl get pods -o jsonpath="{..image}" | tr -s '[[:space:]]' '\n'|sort|uniq -c
kubectl get pods -o=jsonpath='{range .items[*]}{"\n"}{.metadata.name}{":\t"}{range .spec.containers[*]}{.image}{", "}{end}{end}'|sort
kubectl get pods -o=jsonpath='{range .items[*]}{"\n"}{.metadata.name}{":\t"}{range .spec.containers[*]}{.name}{" "}{end}{end}'|sort
```
