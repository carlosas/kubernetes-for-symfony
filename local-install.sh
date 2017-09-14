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
sleep 1
echo "INSTALLING..."
echo ""

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]
then

  minikube start
  echo ""

fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]
then

  for yaml in kubernetes/volumes/*.yaml
  do
    kubectl create -f $yaml
  done

  echo ""
  echo ""
  echo "PERSISTENT VOLUMES:"
  echo ""
  kubectl get persistentvolumes
  echo ""
  echo ""
  echo "PERSISTENT VOLUME CLAIMS:"
  echo ""
  kubectl get persistentvolumeclaims
  echo ""

fi
