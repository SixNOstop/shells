#!/bin/bash
#用户为tom并且密码为123456,则提示登录成功,否则提示失败
read -p "请输入用户名:" user
read -p "请输入密码:" pass
if [ "$user" == 'tom' -a "$pass" == '123456' ];then
	echo "Login successful"
else
	echo "Login Failed"
fi

