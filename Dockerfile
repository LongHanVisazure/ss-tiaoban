FROM debian:wheezy


#不能用，不开心
#添加相关源
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update

#安装 haproxy wget
RUN apt-get install -y haproxy wget
RUN service haproxy stop

#删除相关配置文件
RUN rm /etc/haproxy/haproxy.cfg

#下载并使用新的配置文件
RUN wget http://shanlinfeiniao.oss-cn-qingdao.aliyuncs.com/haproxy.cfg -P /etc/haproxy
RUN haproxy -f haproxy.cfg 
EXPOSE 9002



