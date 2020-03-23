#!/bin/bash
myping(){
ping -c2 -i0.3 -w1 $1 &>/dev/null
if [ $? -eq 0 ];then
	echo "$1 is up"
else
	echo "$1 is down"
fi
}
for i in {1..254}
do
	myping 192.168.4.$i &
done
#使用&符号,将执行的函数放入后台执行
$这样做的好处是不需要等待PING第一台主机的回应,就可以继续并发ping第二台主机,依次类推
