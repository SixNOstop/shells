#!/bin/bash
#使用netstat -atn 可以查看本机所有连接的状态,-a查看所有,-t仅显示tcp连接的信息,-n数字格式显示
#local address(第四列是本机的IP和端口信息)
#foreign address(第五列时远程主机的IP和端口)
#使用awk命令显示第五列数据,再显示第一列IP地址信息
#sort可以按数字大小排序,最后使用uniq将多余重复的删除,并统计重复的次数
netstat -atn |awk '{print $5 }' |awk '{print $1}' |sort -nr |uniq -c
