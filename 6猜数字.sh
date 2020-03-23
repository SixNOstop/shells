#!/bin/bash
#RANDOM为系统自带的系统变量,值为0-32767的随机数字
#使用取余算法将随机数变为1-100的随机数
num=$[RANDOM%100+1]

#使用read提示用户猜数字
#使用if判断用户猜数字的大小关系:-eq等于,-ne不等于,-gt大于,-ge大于等于,-lt小于,-le小于等于
while :
do
	read -p "计算机生成了一个1-100的随机数,你猜:" cai
	if [ $cai -eq $num ];then
		echo "恭喜你,才对了"
	elif [ $cai -gt $num ];then
		echo "0ops,猜大了"
	else
		echo "0ops,猜小了"
	fi
done
