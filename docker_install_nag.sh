#!/bin/sh

# 定义变量
repo_owner="zhujijqiu" # 仓库所有者
repo_name="nag_site"   # 仓库名称
dockerfile_path="dockerfile" # Dockerfile 文件路径
dockercompose_path="docker-compose.yaml" # docker-compose 文件路径

# 下载 Dockerfile 文件
wget "https://raw.githubusercontent.com/${repo_owner}/${repo_name}/master/${dockerfile_path}"
echo "Dockerfile 下载完成！"

# 下载 docker-compose 文件
wget "https://raw.githubusercontent.com/${repo_owner}/${repo_name}/master/${dockercompose_path}"
echo "docker-compose 文件下载完成！"

# 构建 Docker 镜像
# docker build -t myimage -f "${dockerfile_path}" .
# echo "Docker 镜像构建完成！"

# 启动 Docker 容器
docker-compose  up
echo "Docker 容器已启动！"
