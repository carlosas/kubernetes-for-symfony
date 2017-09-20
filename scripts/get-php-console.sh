#!/bin/bash
echo ""
echo " Kubernetes-for-Symfony"
echo ""
sleep 1

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  PHPCONTAINER="$(kubectl get pods | grep -o -E '^symfony-[0-9a-z\-]+') --container php"
  echo "Run 'exit' command or press Ctrl+D to return..."
  echo ""
  kubectl exec -it ${PHPCONTAINER} -- /bin/bash
fi

echo ""
