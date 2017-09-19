# Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet finished**

---

## Quick guide

### Requirements

* kubectl https://kubernetes.io/docs/tasks/tools/install-kubectl/
* minikube https://kubernetes.io/docs/tasks/tools/install-minikube/

### Setup

* `minikube start`
* `kubectl create kubernetes/symfony-deployment.yaml`
* `kubectl create kubernetes/symfony-service.json`
* `kubectl create kubernetes/mysql-statefulset.yaml`
* `kubectl create kubernetes/mysql-service.json`
* `minikube service symfony --url`

### Clean up

* `./stop-and-delete.sh`
