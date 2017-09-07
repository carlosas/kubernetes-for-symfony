# Complete Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet functional**

---

## Cheat sheet:

### Run minikube with nginx

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

### Check nginx

`kubectl get pods`
> ```
> NAME                     READY     STATUS    RESTARTS   AGE
> nginx-1423793266-vxhnv   1/1       Running   0          2h
> ```

`curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/nginx-1423793266-vxhnv/`
> <!DOCTYPE html>
> <html>
> <head>
> <title>Welcome to nginx!</title>
> <style>
>     body {
>         width: 35em;
>         margin: 0 auto;
>         font-family: Tahoma, Verdana, Arial, sans-serif;
>     }
> </style>
> </head>
> <body>
> <h1>Welcome to nginx!</h1>
> <p>If you see this page, the nginx web server is successfully installed and
> working. Further configuration is required.</p>
> 
> <p>For online documentation and support please refer to
> <a href="http://nginx.org/">nginx.org</a>.<br/>
> Commercial support is available at
> <a href="http://nginx.com/">nginx.com</a>.</p>
> 
> <p><em>Thank you for using nginx.</em></p>
> </body>
> </html>
