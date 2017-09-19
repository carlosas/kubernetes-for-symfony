# Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet finished**

---

## Introduction

This stack is a starting point for building a distributed and scalable stack with Kubernetes. It runs locally with Minikube, but it can be modified to use AWS or Google Cloud. Any contribution in this direction would be appreciated.

## Quick guide

### Requirements

* kubectl https://kubernetes.io/docs/tasks/tools/install-kubectl/
* minikube https://kubernetes.io/docs/tasks/tools/install-minikube/

### Usage

#### Build and start the stack:

* `./start-and-create.sh`

#### Clean up and stop the stack:

* `./stop-and-delete.sh`

### Misc commands

```sh
kubectl get pods # Get a list of PODs and their status
kubectl exec -it POD_NAME --container php -- /bin/bash # Get a shell of PHP (replace POD_NAME with symfony's POD name)
```

---

## TO DO

* Create a volume (PV and PVC)
* Map the PVC to nginx's */var/www/application/*
* Provide a way to deploy a Symfony app into the PV
