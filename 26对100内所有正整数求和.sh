#!/bin/bash
#seq 100可以快速自动生成100个整数
sun=0
for i in `seq 100`
do
	sum=$[sum+i]
done
echo "总和是:$sum"
