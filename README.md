# nginx-limit-rate

## 安装环境
* docker-compose 安装
```
    cd nginx-limit-rate
    docker-compose up -d
```
* k8s 安装
```    
    minikube start --memory=4096 --hyperv-virtual-switch="Default Switch" --image-mirror-country="cn" --registry-mirror=https://hub-mirror.c.163.com --registry-mirror=https://docker.mirrors.ustc.edu.cn --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers --insecure-registry=registry.cn-hangzhou.aliyuncs.com --insecure-registry=registry.k8s.io --mount --mount-string  /Users/jim/Workdata/nginx-limit-rate:/home/docker/Workdata/nginx-limit-rate --install-addons=true --addons=ingress
    kubectl apply -f nginx-deployment.yaml
```

## ab 测试
```
    ab -n 10 -c 10 127.0.0.1/index.html
    ab -n 10 -c 10 127.0.0.1/index.php

    // 修改 docker-compose-nginx.conf 速率
    limit_req_zone $binary_remote_addr zone=mylimit:10m rate=2r/s;
    limit_req zone=mylimit burst=5;
```
## 生成镜像
```
    docker build -t nginx:test -f nginx-Dockerfile .
    docker image tag nginx:test lwenjim/nginx:test
    
    docker build -t php:test -f php-Dockerfile .
    docker image tag php:test lwenjim/php:test

```