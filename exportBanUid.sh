#!/bin/bash

mysql user_ban -N -e'select distinct uid from ban_log where iserver=1 ;' > /tmp/ban_us_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=2 ;' > /tmp/ban_th_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=3 ;' > /tmp/ban_de_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=4 ;' > /tmp/ban_ae_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=5 ;' > /tmp/ban_nl_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=6 ;' > /tmp/ban_fr_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=7 ;' > /tmp/ban_spil_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=8 ;' > /tmp/ban_qa_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=9 ;' > /tmp/ban_devbox_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=10;' > /tmp/ban_test_uid.txt
mysql user_ban -N -e'select distinct uid from ban_log where iserver=11;' > /tmp/ban_plinga_uid.txt
