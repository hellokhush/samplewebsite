FROM ubuntu:18.04
LABEL maintainer="khushboo"
ENV REFRESHED_AT 2016-06-01
RUN apt-get -yqq update; apt-get -yqq install nginx
RUN mkdir -p /var/www/html/website
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
