# nginx-limit-rate

<<<<<<< HEAD
### 测试NGINX限流模块
#### 构建镜像
* 1.添加Nginx源码包到docker
* 2.更新数据源,并且安装依赖的开发包
* 3.编译源码包
* 4.安装和部署

### 安装
```
git clone git@github.com:lwenjim/nginx-limit-rate.git
cd nginx-limit-rate
docker-compose up -d
ab -n 8000 -c 60 localhost:8000/index.php
=======
### 项目概括
通过web服务器对客户端流量进行限制,以达到保护后端服务器和数据库的目的,

1.打包Nginx镜像
```
// 安装 ngx_http_limit_req_module 模块
// 拷贝 default.conf /etc/nginx/conf.d/default.conf 位置
```

1.安装以docker的形式运行Nginx服务, 
2.安装Nginx限流模块(ngx_http_limit_req_module)
3.添加限流模块的配置

```

```
4.



灵感来自于[参考](https://blog.csdn.net/IT_ZRS/article/details/108805751)
>>>>>>> 239ec8a (feat: add docker-compose)
