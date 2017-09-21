#!/bin/bash
echo ""
echo " Kubernetes-for-Symfony"
echo ""
sleep 1

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  PHPCONTAINER="$(kubectl get pods | grep -o -E '^jenkins-[0-9a-z\-]+')"
  echo "Run 'exit' command or press Ctrl+D to return..."
  echo ""
  kubectl exec -it ${PHPCONTAINER} -- /bin/bash
fi

echo ""
