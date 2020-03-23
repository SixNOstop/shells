#!/bin/bash
#定义变量user,passwd,date(备份的时间戳)
#dbname (需要备份的数据库名称,根据实际需要修改变量的值,默认备份mysql数据库)

user=root
passwd=123456
dbname=mysql
date=$(date +%Y%m%d)

#测试备份目录是否承载,不存在则自动创建该目录
[ ! -d /mysqlbackup ] && mkdir /mysqlbackup
#使用mysqldump命令备份数据库
mysqldump -u"$user" -p"$passwd" "$dbname" > /mysqlbackup/"$dbname"-${date}.sql
