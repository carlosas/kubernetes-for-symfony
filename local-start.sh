#!/bin/bash
echo ""
echo "                .-+sydmmNNNNmmdys+-."
echo "             :sdNNNNNNNNNNNNNNNNNNNNds:"
echo "          :yNNNNNNNNNNNNNNNNNNNNNNNNNNNNy:"
echo "        +mNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNm."
echo "      :mNNNNNNNNNNNNNNNNNNNNNNNNNp-*^^-dNNNm:"
echo "     yNNNNNNNNNNNNNNNNNNNNNNNNNN' .odm.  :dNNNy"
echo "    dNNNNNNNNNNNNNNNNNNNNNNNNNy' :NNNNb  ;hNNNNd"
echo "   dNNNNNNNNNNNNNNNYYYNNNNNNN:  .NNNNNNhdmNNNNNNd"
echo "  yNNNNNNNNNNNNs'      'qNNN-   sNNNmyqNNNNNNNNNNy"
echo " -NNNNNNNNNNNh'  /NNNNN.  ^*   'NNNN;  yNNNNNNNNNN-"
echo " yNNNNNNNNNNN.   :mNNNNNNb-    /NNm'  +NNNNNNNNNNNy"
echo " mNNNNNNNNNNN:    'oNNNNNN       _.sodNNNNNNNNNNNNN"
echo " NNNNNNNNNmNNN+     'dNNNo    .NNNNNNNNNNNNNNNNNNNN"
echo " mNNNNNNd'  sNNdb    :NNN'    oNNNNNNNNNNNNNNNNNNNm"
echo " yNNNNNNm   .QQgo    sNNy    'NNNNNNNNNNNNNNNNNNNNy"
echo " -NNNNNNNm,        :hNNN:    oNNNNNNNNNNNNNNNNNNNN-"
echo "  yNNNNNNNNNbnnnndNNNNNd    -NNNNNNNNNNNNNNNNNNNNy"
echo "   dNNNNNNNNNNNNNNNNNNN/   .mNNNNNNNNNNNNNNNNNNNd"
echo "    dNNNNNNNNNNmNNNNNNh   -mNNNNNNNNNNNNNNNNNNNd"
echo "     yNNNNNNNs'  :NNNd'  oNNNNNNNNNNNNNNNNNNNNy"
echo "      :mNNNNNs.  +QP'  +mNNNNNNNNNNNNNNNNNNNm:"
echo "        *mNNNmo:.._..odNNNNNNNNNNNNNNNNNNNNm*"
echo "          :yNNNNNNNNNNNNNNNNNNNNNNNNNNNNy:"
echo "            ':sdNNNNNNNNNNNNNNNNNNNNds:'"
echo "               '*-+sydmmNNNNmmdys+-*'"
echo ""
echo "               Kubernetes-for-Symfony"
echo ""
echo ""
sleep 1
echo "STARTING..."
echo ""
sleep 1

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  echo "WARNING: Minikube is already running"
fi

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  minikube start
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  echo ""
  sleep 1

for yaml in kubernetes/*.yaml
do
  kubectl create -f $yaml
done

#  kubectl create -f kubernetes/nginx.yaml
  echo ""
  sleep 1
  echo ""
  echo "NODES:"
  echo ""
  kubectl get nodes
  echo ""
  sleep 1
  echo ""
  echo "SERVICES:"
  echo ""
  kubectl get services
  echo ""
  sleep 1
  echo ""
  echo "PODS:"
  echo ""
  kubectl get pods
  echo ""
  sleep 1
fi
