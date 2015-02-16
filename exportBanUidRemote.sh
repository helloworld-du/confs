#!/bin/bash
set -x
uidFileDir=~/work/var/data/ban/
ssh julia "/home/dusc/bin/exportBanLog.sh" 
scp julia:/tmp/ban_*_uid.txt $uidFileDir

ipAE=`ssh deploy "php /mnt/deploy/gethost.php 2>/dev/null" | grep ae,proxy | head -1 | awk -F"," '{print $2}' `
scp -F ~/.ssh/deploy_config $uidFileDir/ban_ae_uid.txt $ipAE:/tmp/
