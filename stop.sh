#!/bin/bash
echo ""
echo "                 -+sydmmNNNNmmdys+-"
echo "             :sdNNNNNNNNNNNNNNNNNNNNds:"
echo "          :yNNNNNNNNNNNNNNNNNNNNNNNNNNNNy:"
echo "        +mNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNm."
echo "      :mNNNNNNNNNNNNNNNNNNNNNNNNNp-*^^-dNNNm:"
echo "     yNNNNNNNNNNNNNNNNNNNNNNNNNNs .odm.  :dNNNy"
echo "    dNNNNNNNNNNNNNNNNNNNNNNNNNy' :NNNNb  ;hNNNNd"
echo "   dNNNNNNNNNNNNNNNYYYNNNNNNN:  .NNNNNNhdmNNNNNNd"
echo "  yNNNNNNNNNNNNs'      'qNNN-   sNNNmyqNNNNNNNNNNy"
echo " -NNNNNNNNNNNh'  /NNNNN.  ^*   'NNNN;  yNNNNNNNNNN-"
echo " yNNNNNNNNNNN.   :mNNNNNNb-    /NNm'  +NNNNNNNNNNNy"
echo " mNNNNNNNNNNN:    'oNNNNNN       _.sodNNNNNNNNNNNNN"
echo " NNNNNNNNNmNNN+     'dNNNo    .NNNNNNNNNNNNNNNNNNNN"
echo " mNNNNNNd'  sNNdb    :NNN'    oNNNNNNNNNNNNNNNNNNNm"
echo " yNNNNNNm'  .NNNo    sNNy    'NNNNNNNNNNNNNNNNNNNNy"
echo " -NNNNNNNm+        :hNNN:    oNNNNNNNNNNNNNNNNNNNN-"
echo "  yNNNNNNNNNmdnnhdNNNNNd    -NNNNNNNNNNNNNNNNNNNNy"
echo "   dNNNNNNNNNNNNNNNNNNN/   .mNNNNNNNNNNNNNNNNNNNd"
echo "    dNNNNNNNNNNmNNNNNNh   -mNNNNNNNNNNNNNNNNNNNd"
echo "     yNNNNNNNs'  :NNNd'  oNNNNNNNNNNNNNNNNNNNNy"
echo "      :mNNNNNs.  +Nm'  +mNNNNNNNNNNNNNNNNNNNm:"
echo "        \mNNNmo:..,.nodNNNNNNNNNNNNNNNNNNNNm/"
echo "          :yNNNNNNNNNNNNNNNNNNNNNNNNNNNNy:"
echo "             :sdNNNNNNNNNNNNNNNNNNNNds:"
echo "                *-+sydmmNNNNmmdys+-*"
echo ""
echo "               Kubernetes-for-Symfony"
echo ""
echo ""
echo "STOPPING..."
sleep 1
echo ""

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  kubectl delete deployments --all
  kubectl delete services --all
  kubectl delete pods --all
  kubectl delete persistentvolumeclaims --all
  kubectl delete persistentvolumes --all

  sleep 1
  echo ""
  minikube stop
fi
