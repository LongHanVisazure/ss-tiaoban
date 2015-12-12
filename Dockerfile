FROM debian:wheezy


#fakaixin
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y haproxy
RUN service haproxy stop
RUN apt-get install -y wget
RUN rm /etc/haproxy/haproxy.cfg
RUN wget http://shanlinfeiniao.oss-cn-qingdao.aliyuncs.com/haproxy.cfg -P /etc/haproxy
RUN haproxy -f /etc/haproxy/haproxy.cfg 
EXPOSE 9002



