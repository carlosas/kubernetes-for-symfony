# Complete Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)

WORK IN PROGRESS :warning: **This project is not yet functional**

---

## Cheat sheet:

`minikube start`
> Kubectl is now configured to use the cluster.

`kubectl cluster-info`
> Kubernetes master is running at https://192.168.99.100:8443

`kubectl get nodes`
> ```
> NAME        STATUS    AGE     VERSION
> minikube    Ready     1d      v1.7.0
> ```

`kubectl run nginx --image=nginx --port=80`
> deployment "nginx" created

`kubectl get deployments`
> ```
> NAME      DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
> nginx     1         1         1            1           18s
> ```

`kubectl proxy`
> Starting to serve on 127.0.0.1:8001
