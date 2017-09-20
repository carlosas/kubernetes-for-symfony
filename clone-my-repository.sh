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
echo "CLONING REPOSITORY..."
echo ""

if [[ $(minikube status | grep 'minikube: Stopped') == 'minikube: Stopped' ]]; then
  echo "ERROR: Minikube is not running"
fi

if [[ $(minikube status | grep 'minikube: Running') == 'minikube: Running' ]]; then
  echo ""
  PHPCONTAINER="$(kubectl get pods | grep -o -E '^symfony-[0-9a-z\-]+') --container php"
  kubectl exec -it ${PHPCONTAINER} -- git clone https://github.com/symfony/symfony-standard.git /var/www/application/
  kubectl exec -it ${PHPCONTAINER} -- composer install
  kubectl exec -it ${PHPCONTAINER} -- chmod -R 777 /var/www/application/var/cache/ /var/www/application/var/logs/ /var/www/application/var/sessions/
fi

echo ""
