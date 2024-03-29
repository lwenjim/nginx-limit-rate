#!/bin/bash
cd /data||exit
cp nginx/sources.list  /etc/apt/sources.list
# sed -i 's@//.*archive.ubuntu.com@//mirrors.aliyun.com@g' /etc/apt/sources.list
# sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
# sed -i 's/http:/https:/g' /etc/apt/sources.list
apt-get update 
unzip  fastdfs-nginx-module-master.zip 
tar -zxvf nginx-1.25.4.tar.gz . 
apt install gcc g++ 
./configure --prefix=/data/nginx --add-module=/data/fastdfs-nginx-module-master