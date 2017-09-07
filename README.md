# Complete Kubernetes stack for Symfony 3

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/carlosas/kubernetes-for-symfony/issues)
[![HitCount](http://hits.dwyl.com/carlosas/kubernetes-for-symfony.svg)](http://hits.dwyl.com/carlosas/kubernetes-for-symfony)

WORK IN PROGRESS :warning: **This project is not yet functional**

---

## Cheat sheet:

### Run minikube

`minikube start`
> Kubectl is now configured to use the cluster.

`kubectl cluster-info`
> Kubernetes master is running at https://192.168.99.100:8443

`kubectl get nodes`
> ```
> NAME        STATUS    AGE     VERSION
> minikube    Ready     1d      v1.7.0
> ```

### Create nginx deployment

`kubectl create -f nginx-deployment.yaml `
> deployment "nginx-deployment" created

`kubectl describe deployment nginx-deployment`
> ```
> Name:			nginx-deployment
> Namespace:		default
> CreationTimestamp:	Thu, 07 Sep 2017 17:34:25 +0200
> Labels:			app=nginx
> Annotations:		deployment.kubernetes.io/revision=1
> Selector:		app=nginx
> Replicas:		1 desired | 1 updated | 1 total | 1 available | 0 unavailable
> StrategyType:		RollingUpdate
> MinReadySeconds:	0
> RollingUpdateStrategy:	25% max unavailable, 25% max surge
> Pod Template:
>   Labels:	app=nginx
>   Containers:
>    nginx:
>     Image:		nginx
>     Port:		80/TCP
>     Environment:	<none>
>     Mounts:		<none>
>   Volumes:		<none>
> Conditions:
>   Type		Status	Reason
>   ----		------	------
>   Available 	True	MinimumReplicasAvailable
>   Progressing 	True	NewReplicaSetAvailable
> OldReplicaSets:	<none>
> NewReplicaSet:	nginx-deployment-31893996 (1/1 replicas created)
> Events:
>   FirstSeen	LastSeen	Count	From			SubObjectPath	Type		Reason			Message
>   ---------	--------	-----	----			-------------	--------	------			-------
>   9s		9s		1	deployment-controller			Normal		ScalingReplicaSet	Scaled up replica set nginx-deployment-31893996 to 1
> 
> ```

### Start the proxy

`kubectl proxy`
> Starting to serve on 127.0.0.1:8001

### Check POD nginx

`kubectl get pods`
> ```
> NAME   READY     STATUS    RESTARTS   AGE
> nginx  1/1       Running   0          2h
> ```

`curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/nginx/`
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

### Stop nginx

Podemos eliminar el POD generado. El deployment lo apagará e iniciará uno nuevo en su lugar.

`kubectl get pods`
> ```
> NAME                              READY     STATUS    RESTARTS   AGE
> nginx-deployment-31893996-vr7j1   1/1       Running   0          5m
> ```

`kubectl delete pod nginx-deployment-31893996-vr7j1`
> pod "nginx-deployment-31893996-vr7j1" deleted

Por el contrario podemos eliminar el Deployment completo.

`kubectl get deployments`
> NAME               DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
> nginx-deployment   1         1         1            1           8m

`kubectl delete deployment nginx-deployment`
> deployment "nginx-deployment" deleted
