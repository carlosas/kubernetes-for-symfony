#!/bin/bash
echo ""
echo "               Kubernetes-for-Symfony"
echo ""
echo ""
sleep 1
echo "RETRIEVING PASSWORD..."
echo ""

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  echo ""
  PHPCONTAINER="$(kubectl get pods | grep -o -E '^jenkins-[0-9a-z\-]+')"
  kubectl exec -it ${PHPCONTAINER} -- cat /var/jenkins_home/secrets/initialAdminPassword
fi

echo ""
