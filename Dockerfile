FROM ubuntu:18.04

MAINTAINER pablo@vigo.cat

RUN apt update && apt -y install nginx && \
	rm -rf /var/log/apt/* /var/cache/apt/archives/ /usr/share/doc/ /usr/share/man /usr/include

COPY html /var/www/html

CMD ["nginx", "-g", "daemon off;"]
