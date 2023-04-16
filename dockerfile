FROM ubuntu
RUN apt-get update
RUN apt-get -y install hugo
RUN apt-get -y install net-tools 
RUN apt-get -y install git 
RUN git clone https://github.com/zhujinqiu/qnag.github.io.git nav-site
WORKDIR nav-site
RUN host_ip=$(ifconfig eth0 | grep "inet " | awk '{ print $2}')
EXPOSE 1313
ENTRYPOINT ["hugo","server","--baseUrl=$host_ip","--bind=0.0.0.0"]
