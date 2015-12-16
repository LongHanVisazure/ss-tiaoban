FROM debian:wheezy



RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update

#安装 haproxy wget
RUN apt-get install -y haproxy wget



EXPOSE 9002



