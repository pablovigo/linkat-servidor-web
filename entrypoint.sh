#!/bin/bash

if [ -z "$(ls -A /var/www/html/)" ]; then
	cp -r /opt/html/* /var/www/html/
fi

echo "daemon off;" >> /etc/nginx/nginx.conf
/usr/sbin/nginx -c /etc/nginx/nginx.conf 
