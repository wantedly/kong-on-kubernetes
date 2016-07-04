kong-kubernetes
---

* Using AWS RDS


## Develop

```
$ docker-compose up -d
$ curl http://127.0.0.1:8001
```

## Setup

```
$ cp .env.sample .env
$ vi .env
$ kubectl create -f kubernetes/svc-external.yaml -f kubernetes/svc-internal.yaml
$ bundle
$ bundle exec ruby config.rb
$ sh kubernetes/create-secret.sh
$ kubectl create -f kubernetes/deployment.yaml
```
