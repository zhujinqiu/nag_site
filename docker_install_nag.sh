#!/bin/sh

# 定义变量

# 下载 Dockerfile 文件
wget "https://raw.githubusercontent.com/zhujinqiu/nag_site/master/dockerfile"

echo "Dockerfile 下载完成！"

# 下载 docker-compose 文件
wget "https://raw.githubusercontent.com/zhujinqiu/nag_site/master/docker-compose.yaml"

echo "docker-compose 文件下载完成！"

# 构建 Docker 镜像
# docker build -t myimage -f "${dockerfile_path}" .
# echo "Docker 镜像构建完成！"

# 启动 Docker 容器
docker-compose  up
echo "Docker 容器已启动！"
