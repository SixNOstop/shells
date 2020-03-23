#!/bin/bash
#提取根分区剩余空间
disk_size=$(df / |awk '/\/{print $4}')
#提取内存剩余空间
men_size=$(free |awk '/men/{print $4}')
while :
do
#内存和磁盘空间大小都是kb单位
if [ $disk_size -le 512000 -a $men-siz -le 1024000 ];then
	mail -s Warning root <<EOF
Insufficient resources, 资源不足
EOF
fi
done
