#!/bin/bash

in_ip=`ifconfig | grep en0: -A 4 --color | tail -n 1 | awk '{print $2}'`
echo "内网: $in_ip"
ifconfig | grep en0 -A 4

echo ""
echo "外网（出口）IP"

curl myip.ipip.net
