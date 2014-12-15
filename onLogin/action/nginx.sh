#!/bin/bash
source ../base
pidfile=/Users/dushengchen/work/var/nginx/nginx.pid
sbin=/Users/dushengchen/work/local/nginx/bin/nginx
conf=/Users/dushengchen/work/local/nginx/conf/nginx.conf

echo $1
if [ "$1" = "stop" ]; then
	echo "reloading"
	kill -INT `cat $pidfile`
	echo "res:" $?
else
	$sbin -c $conf
fi

#/Users/dushengchen/work/local/nginx/bin/nginx -c /Users/dushengchen/work/local/nginx/conf/nginx.conf
