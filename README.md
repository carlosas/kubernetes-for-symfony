# Complete Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet functional**

---

## Quick guide

### Install

* `./local-create-volumes.sh`

* `minikube ssh`

* `cat "Ola ke ase" > index.html`

* <kbd>Cntrl</kbd>+<kbd>c</kbd>

* `./local-start.sh`

### Check

* `kubectl exec -it nginx-pod -- /bin/bash`

* `apt update && apt install curl`

* `curl localhost`
> Ola ke ase
