#!/bin/bash
remote=$1
source `dirname $0`/autoCon.inc.sh
source ${incBase}/${remote}
datetime=`date`
echo "${datetime} ${HOSTNAME} $remote"
ssh $1 "echo ${HOSTNAME} ${datetime} >> /tmp/connect.log"
ssh -N -f -R $remotePort:localhost:22 ${remote}
