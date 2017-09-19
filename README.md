# Complete Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet functional**

---

## Project status

- [x] Set simple POD with nginx
- [x] Set PersistentVolume for www
- [x] Set PersistentVolumeClaim for www
- [x] Link nginx-pod with the PV and PVC
- [x] Set simple Service for nginx
- [x] Expose the Service using NodePort
- [x] Create start script
- [x] Create stop script
- [x] Create volume creation script
- [x] Create volume deletion script
- [x] Extract endpoint out of the box
- [ ] Mount local folder to kubernetes
- [ ] Continue this list

## Quick guide

### Setup

* `./local-create-volumes.sh`

* `minikube ssh`

* `cat "Ola ke ase" > index.html`

* <kbd>Ctrl</kbd>+<kbd>D</kbd>

* `./local-start.sh`
