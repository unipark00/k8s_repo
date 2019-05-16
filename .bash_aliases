alias wkr1='ssh ejungpa@172.31.0.11'
alias wkr2='ssh ejungpa@172.31.0.12'
alias so='. ~/.bashrc'

alias k='kubectl'
alias dkpsa='docker ps -a --format "table {{.ID}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}\t{{.Names}}"'
alias dkps='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}\t{{.Names}}"'

alias getnodes='kubectl get nodes -o wide'
alias getpodsa='kubectl get pods -o wide --all-namespaces | awk '\''{print $1" "$2" "$3" "$4" "$5" "$6" "$7" "$8}'\'' | column -t'
alias getpods='kubectl get pods -o wide | awk '\''{print $1" "$2" "$3" "$4" "$5" "$6" "$7}'\'' | column -t'
alias getdeploy='kubectl get deploy -o wide'
alias getrc='kubectl get rc -o wide'
alias getsvc='kubectl get service -o wide'

alias descpods='kubectl describe pods'
alias watchpods='watch kubectl get pods -o wide'
alias getcon='kubectl get pods -o=custom-columns=NAME:.metadata.name,CONTAINERS:.spec.containers[*].name,HOST_IP:.status.hostIP,POD_IP:.status.podIP'
