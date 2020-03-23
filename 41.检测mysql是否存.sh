#!/bin/bash
#host为你需要检测的mysql主机的IP地址,user为mysql账户,passwd为密码
#这些数据需要根据实际情况修改后方可使用
hots=127.0.0.1
user=root
passwd=123456
mysqladmin -h $host -u $user -p '$passwd' ping &>/decv/null
if [ $? -eq 0 ];then
	echo "mysql is up"
else
	echo "mysql is down"
fi
