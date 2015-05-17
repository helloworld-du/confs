#!/bin/bash
baseDir=`dirname $0`
source $baseDir/../base

set -x
sudo -u dushengchen autossh -M 20000 -q -N -D 7072 vpn &
sudo -u dushengchen autossh -M 20000 -q -N -D 7070 molly &
sudo -u dushengchen autossh -M 20000 -q -N -D 7071 qa &
sudo -u dushengchen autossh -M 20000 -q -N -D 7073 sonia &
sudo -u dushengchen autossh -M 20000 -q -N -D 7074 julia &
sudo -u dushengchen autossh -M 20000 -q -N -D 7075 sigma &
#ssh -N -f -R 6000:localhost:22 vpn
