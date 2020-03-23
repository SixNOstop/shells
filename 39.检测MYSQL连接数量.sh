#!/bin/bash
#本脚本每2秒检测一次mysql并发连接数,可以将脚本设置为开机启动脚本,或者在特定时间执行以满足对mysql数据库的监控需求,查看mysql连接是否正常
#本案例中的用户和密码需要根据实际情况修改后方可使用
log_file=/var/log/mysql_count.log
user=root
passwd=123456
while :
do
	sleep 2
	count =`mysqladmin -u "$user" -p "$passwd" status |awk '{print $4'`
	echo "`date +%Y-%m-%d ` 并发连接数为:$count" >>$log_file
