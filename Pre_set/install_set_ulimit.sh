#!/bin/sh
# Set ulimit
# (c) 2017 mtxiaowangzi http://eveino.com
# https://github.com/mtxiaowangzi/My_nmp/blob/master/Pre_set/install_set_ulimit.sh

if cat /etc/security/limits.conf | grep "* soft nofile 65535" > /dev/null;then
	echo ""
else
	echo "* soft nofile 65535" >> /etc/security/limits.conf
fi

if cat /etc/security/limits.conf | grep "* hard nofile 65535" > /dev/null ;then
	echo ""
else
	echo "* hard nofile 65535" >> /etc/security/limits.conf
fi

