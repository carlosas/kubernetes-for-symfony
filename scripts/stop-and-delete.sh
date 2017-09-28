#!/bin/bash
echo ""
echo "                .-+symmmKKKKmmmys+-."
echo "             :sfKKKKKKKKKKKKKKKKKKKKfs:"
echo "          :yKKKKKKKKKKKKKKKKKKKKKKKKKKKKy:"
echo "        +mKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKm."
echo "      :mKKKKKKKKKKKKKKKKKKKKKKKKKf-*^^-oKKKm:"
echo "     oKKKKKKKKKKKKKKKKKKKKKKKKKK' .odm. ':dKKKo"
echo "    oKKKKKKKKKKKKKKKKKKKKKKKKKy' :KKKKb  ;hKKKKo"
echo "   oKKKKKKKKKKKKKKKYYYKKKKKKK:  .KKKKKKhdmKKKKKKo"
echo "  yKKKKKKKKKKKKs'      'qKKK-   sKKKsymKKKKKKKKKKy"
echo " -KKKKKKKKKKKh'  /KKKKK.  ^*   'KKKK;  yKKKKKKKKKK-"
echo " yKKKKKKKKKKK.   :mKKKKKKb-    /KKm'  +KKKKKKKKKKKy"
echo " mKKKKKKKKKKK:    'oKKKKKK       _.sodKKKKKKKKKKKKK"
echo " KKKKKKKKKmKKK+     'dKKKo    .KKKKKKKKKKKKKKKKKKKK"
echo " mKKKKKKd'  sKKdb    :KKK'    oKKKKKKKKKKKKKKKKKKKm"
echo " yKKKKKKm   .QQgo    sKKy    'KKKKKKKKKKKKKKKKKKKKy"
echo " -KKKKKKKm,        :hKKK:    oKKKKKKKKKKKKKKKKKKKK-"
echo "  yKKKKKKKKKbnnnndKKKKKd    -KKKKKKKKKKKKKKKKKKKKy"
echo "   dKKKKKKKKKKKKKKKKKKK/   .mKKKKKKKKKKKKKKKKKKKd"
echo "    dKKKKKKKKKKmKKKKKKh   -mKKKKKKKKKKKKKKKKKKKd"
echo "     sKKKKKKKs'  :KKKd'  oKKKKKKKKKKKKKKKKKKKKs"
echo "      :mKKKKKs.  +QP'  +mKKKKKKKKKKKKKKKKKKKm:"
echo "        *mKKKmo:.._..odKKKKKKKKKKKKKKKKKKKKm*"
echo "          :yKKKKKKKKKKKKKKKKKKKKKKKKKKKKy:"
echo "            ':smKKKKKKKKKKKKKKKKKKKKms:'"
echo "               '*-+symmmKKKKmmmys+-*'"
echo ""
echo "               Kubernetes-for-Symfony"
echo ""
echo ""
echo "STOPPING..."
echo ""
sleep 1

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  kubectl delete services --all
  kubectl delete deployments --all
  kubectl delete statefulsets --all
  kubectl delete secrets --all
  kubectl delete persistentvolumeclaims --all
  echo ""
  while ([[ $(kubectl get pods | grep "No resources found.") == "No resources found." ]]); do
    echo "Waiting, pods are not dead yet..."
    sleep 5
  done
  sleep 1
  minikube stop
  echo ""
fi
