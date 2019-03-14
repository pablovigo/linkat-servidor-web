#!/bin/bash

if [ -z "$(ls -A /var/www/html/)" ]; then
	cp -r /opt/html/* /var/www/html/
fi
