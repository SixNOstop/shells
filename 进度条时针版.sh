#!/bin/bash
#定义一个显示进度函数,屏幕快速显示
rotate_line(){
INTERVAL=0.1	#设置间隔时间
COUNT="0"	#设置4个形状的编号,默认编号为0
while :
do
COUNT=`expr $COUNT + 1`	#执行循环,Count每次循环加1,(分别代表4种不同的形象)
	case $COUNT in
	"1")
		echo -e '-'"\b\c"
		sleep $INTERVAL
		;;
	"2")
		echo -e '\\'"\b\c"
		sleep $INTERVAL
		;;
	"3")	
		echo -e "|\b\c"
		sleep $INTERVAL
		;;
	"4")	
		echo -e "/\b\c"
		sleep $INTERVAL
		;;
	*)	
		COUNT="0";;
	esac
done
}
rotate_line
