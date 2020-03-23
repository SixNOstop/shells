#!/bin/bash
#设置变量定义需要添加到防火墙规则的服务和端口号
#使用firewall-cmd --get-services 可以查看firewall支持哪些服务
service="nfs http ssh"
port="80 22 8080"

#循环将每个服务添加到防火墙规则中
for i in $service
do
echo "Adding $i service to firewall"
firewall-cmd --add-service=${i}
done

#循环将每个端口添加到防火墙规则中
for i in $port
do
echo "Adding $i Port to firewall"
firewall-cmd --add-port=${i}/tcp
done
#将以上设置的临时防火墙规则,转换为永久有效的规则
firewall-cmd --retime-to-permanent

