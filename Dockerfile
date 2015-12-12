FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>

#fakaixin
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN mkdir /usr/share/haproxy
RUN apt-get install -y haproxy
RUN apt-get install -y wget
RUN rm /etc/haproxy/haproxy.cfg
RUN wget http://shanlinfeiniao.oss-cn-qingdao.aliyuncs.com/haproxy.cfg -P /etc/haproxy
RUN haproxy -f /etc/haproxy/haproxy.cfg
EXPOSE 9002



