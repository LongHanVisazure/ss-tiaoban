FROM debian:wheezy
MAINTAINER qida <sunqida@foxmail.com>

#fakaixin
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get install haproxy

