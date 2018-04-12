#!/bin/bash

#check putong-xxx-service
ps -ef | grep "-service" | grep -v grep | grep "putong-"
systemctl -a | grep "putong-"

#关闭所有putong-xxx-service
systemctl -a | grep "putong-" | awk '{if(NF==6){a=$6;}else{a=$5;}cmd="systemctl stop "a;x=system(cmd);print cmd,"\t"x;}'
ps -ef | grep "-service" | grep -v grep | grep "putong-" |awk '{cmd="systemctl stop "$2;x=system(cmd);print cmd,"\t",$8, x;}'

#打开所有putong-xxx-service
systemctl -a | grep "putong-" | awk '{if(NF==6){a=$6;}else{a=$5;}cmd="systemctl start "a;x=system(cmd);print cmd,"\t"x;}'