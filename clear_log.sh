#!/bin/sh
set -x
rm -f ~/work/onLogin/logs/*
rm -f /tmp/crontab.log
rm -rf ~/work/var/logs/*
rm -f ~/work/var/php-fpm/*.log
rm -f ~/work/var/php/php_errors.log
rm -f ~/work/var/nginx/*.log
rm -f ~/work/var/redis/*.log
rm -f ~/work/var/mysql/*.log
rm -r ~/work/var/xdebug/*
