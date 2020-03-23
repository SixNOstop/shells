#!/bin/bash
if [ $# -eq 0 ];then
	echo "你需要指定一个软件包名称作为脚本参数"
	echo "用法:$0 软件包名称..."
fi
#$@提取所有的位置变量的值,相当于$*
for package in "$@"
do
if rpm -q ${package} &>/dev/null ;then
	echo -e "${packeage}\033[32m 已安装 \033[0m"
else
	echo -e "${packeage}\033[34m 未安装 \033[0m"
fi
done
