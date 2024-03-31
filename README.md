# nginx-limit-rate

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