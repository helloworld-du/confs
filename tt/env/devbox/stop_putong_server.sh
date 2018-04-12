#!/bin/bash

serverName=$1

if [ -n $serverName ];then
 ps_kill_9 $serverName
