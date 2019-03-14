FROM ubuntu:18.04

MAINTAINER pablo@vigo.cat

RUN	apt update && apt -y install --no-install-recommends nginx && \
	rm -rf /var/lib/apt /var/lib/dpkg /var/log/apt/* \
	/var/cache/apt /usr/share/doc/ /usr/share/man \ 
	/usr/include /usr/share/info /var/www/html/* 

ADD	web.tar.gz /var/www/html/

COPY	entrypoint.sh /
RUN	cp -r /var/www/html /opt/

EXPOSE 80

ENTRYPOINT [ "/entrypoint.sh" ]
