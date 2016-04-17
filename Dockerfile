FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>
 

RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y haproxy
RUN apt-get install -y wget
RUN rm /etc/haproxy/haproxy.cfg
RUN apt-get autoclean 
RUN apt-get autoremove 
RUN rm -rf /var/lib/apt/lists/* 

#此处使用你的配置文件的下载地址
RUN wget http://shanlinfeiniao.oss-cn-qingdao.aliyuncs.com/haproxy.cfg -P /etc/haproxy
CMD haproxy -f /etc/haproxy/haproxy.cfg

此处为ss的远程端口
EXPOSE 9002



