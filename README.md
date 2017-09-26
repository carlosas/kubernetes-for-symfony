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
./scripts/start-and-create.sh
```

* Retrieve the ips of the cluster services

```sh
./scripts/get-service-endpoints.sh
```

* Clone your repository into the stack *(set the database ip you just retrieved!)*

```sh
./scripts/clone-my-repository.sh
```

#### Clean up and stop the stack:

```sh
./scripts/stop-and-delete.sh
```

---

## TO DO

* ~~Replace the step "Get a shell of PHP" with a one-liner command using grep~~
* Define the repository url in a config file
* ~~Include the start steps into a script~~
* Support private GitHub repositories
* Create a volume (PV and PVC)
* Map the PVC to nginx's */var/www/application/*
* ~~Provide a way to deploy the Symfony app into the PV~~
* Integrate a deployment method (jenkins?)
