#!/bin/bash
#本次安装没成功，openssl安装后，php7 configure的时候还是没有识别出来，需要再研究
#采用apt-get安装php7


#[before]
sudo apt-get install libxml2
sudo apt-get install libxml2-dev
sudo apt-get install openssl

phpBase='/home/www/php7'
gzFile='php7.tar.gz'
phpSrcDir='php-7.0.7'
fpmUser='www'
fmpGroup='www'
cd ${phpBase}
wget http://php.net/get/php-7.0.7.tar.gz/from/this/mirror
mv mirror $gzFile
tar -xzvf $gzFile
cd $phpSrcDir

./configure --prefix=/usr/local/php7 \
--with-config-file-path=/usr/local/php7/etc \
--with-config-file-scan-dir=/usr/local/php7/etc/php.d \
--with-mcrypt=/usr/include \
--enable-mysqlnd \
--with-mysqli \
--with-pdo-mysql \
--enable-fpm \
--with-fpm-user=$fpmUser \
--with-fpm-group=$fmpGroup \
--with-gd \
--with-iconv \
--with-zlib \
--enable-xml \
--enable-shmop \
--enable-sysvsem \
--enable-inline-optimization \
--enable-mbregex \
--enable-mbstring \
--enable-ftp \
--enable-gd-native-ttf \
--with-openssl \
--enable-pcntl \
--enable-sockets \
--with-xmlrpc \
--enable-zip \
--enable-soap \
--without-pear \
--with-gettext \
--enable-session \
--with-curl \
--with-jpeg-dir \
--with-freetype-dir \
--enable-opcache

#./configure --prefix=/usr/local/php7 --with-config-file-path=/usr/local/php7/etc --with-config-file-scan-dir=/usr/local/php7/etc/php.d --with-mcrypt=/usr/include --enable-mysqlnd --with-mysqli --with-pdo-mysql --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-gd --with-iconv --with-zlib --enable-xml --enable-shmop --enable-sysvsem --enable-inline-optimization --enable-mbregex --enable-mbstring --enable-ftp --enable-gd-native-ttf --with-openssl --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip --enable-soap --without-pear --with-gettext --enable-session --with-curl --with-jpeg-dir --with-freetype-dir --enable-opcache
