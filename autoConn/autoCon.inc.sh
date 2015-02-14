#!/bin/bash
case ${HOSTNAME} in
Dusc*ome* )
    incBase=~/work/git/confs/autoConn/homeInc
;;
Dush*unplus* )
    incBase=~/work/git/confs/autoConn/funplus
;;
* )
    incBase=~/work/git/confs/autoConn/funplus
esac
