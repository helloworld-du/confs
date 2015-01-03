#!/bin/bash
remote=$1
incBase=~/work/git/confs/autoConn/homeInc
source ${incBase}/${remote}
datetime=`date`
ssh $1 "echo ${HOSTNAME} ${datetime} >> /tmp/connect.log"
ssh -N -f -R $remotePort:localhost:22 $1
ssh -qTfnN -D $localVPNPort $1
