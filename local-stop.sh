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
echo "STOPPING..."
echo ""
sleep 1

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  kubectl delete deployments --all
  kubectl delete services --all
  kubectl delete pods --all
  kubectl delete persistentvolumeclaims --all
  kubectl delete persistentvolumes --all
  echo ""
  sleep 1
  minikube stop
fi
