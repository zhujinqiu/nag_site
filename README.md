

本人Blog: [秋](https://blog.betazhu.top)
---

## 这是 Hugo 版 WebStack 主题

本项目是基于**纯静态**的网址导航网站 [webstack.cc](https://github.com/WebStackPage/WebStackPage.github.io) 制作的 [Hugo](https://gohugo.io/) 主题，其中部分代码参考了以下几个开源项目：<br/><br/>


>[https://github.com/liutongxu/liutongxu.github.io](https://github.com/liutongxu/liutongxu.github.io)
>
>[https://github.com/iplaycode/webstack-hugo](https://github.com/iplaycode/webstack-hugo)
>
>[https://www.yuque.com/shenweiyan](https://github.com/shenweiyan/WebStack-Hugo)


## 快速部署

- docker部署

  不用clone，安装好Docker环境

  ```bash
  wget "https://raw.githubusercontent.com/zhujinqiu/nag_site/master/docker_install_nag.sh" && chmod 700 docker_install_nag.sh && ./docker_install_nag.sh
  ```

- 非docker部署

  安装Hugo

  ```bash
  ## 安装环境
  apt-get update
  apt-get -y install hugo
  apt-get -y install net-tools
  apt-get -y install git
  ```

  ```bash
  ## 读取本机ip
  host_ip=$(ifconfig eth0 | grep "inet " | awk '{ print $2}')
  ```

  下载GitHub仓库

  ```bash
  git clone https://github.com/zhujinqiu/nag_site.git
  cd nag_site
  ```

  运行

  ```bash
  hugo server --baseUrl=$host_ip --bind=0.0.0.0 ## $host_ip本机ip   0.0.0.0 放服务器上任何用户可远程访问。
  ```

  



## 项目成立于 2023 年 4 月 16日

- 这是本人第一次搭建导航站。
- 目前挂载在服务器上

## 主题演示地址

- 

