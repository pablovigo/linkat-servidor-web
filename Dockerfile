FROM ubuntu:18.04

MAINTAINER pablo@vigo.cat

RUN apt update && apt -y install nginx && \
	rm -rf /var/log/apt/* /var/cache/apt/archives/ /usr/share/doc/ /usr/share/man /usr/include /var/www/html/*

ADD web.tar.gz /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
