#!/bin/bash
for i in {1..254}
do
	ping -c2 -i0.3 -w1 192.168.4.$i &>/dev/null
	#-c 设置完成要求回应的次数 -i时发送周期 -w 指定一个以秒为单位的退出时间
	if [ $? -eq 0 ];then
		echo "192.168.4.$i is up "
	else
		echo "192.168.4.$i is down"
	fi
done
