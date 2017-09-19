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

* Start the stack

```sh
./start-and-create.sh
```

* Get a list of PODs and their status

```sh
kubectl get pods
```

* Get a shell of PHP (replace POD_NAME with symfony's POD name)

```sh
kubectl exec -it POD_NAME --container php -- /bin/bash
```

* Clone and prepare your Symfony application from GitHub (replace the url)

```sh
git clone https://github.com/symfony/symfony-standard.git /var/www/application/
cd /var/www/application/ && composer install
chmod -R 777 /var/www/application/var/cache/ /var/www/application/var/logs/ /var/www/application/var/sessions/
```

* Exit the PHP shell

<kbd>Ctrl</kbd>+<kbd>D</kbd>

#### Clean up and stop the stack:

```sh
./stop-and-delete.sh
```

---

## TO DO

* Create a volume (PV and PVC)
* Map the PVC to nginx's */var/www/application/*
* Provide a way to deploy a Symfony app into the PV
* Support private GitHub repositories
* Define the repo url in a config file and include the start steps into de script
