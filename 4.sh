#/bin/bash
#使用yum安装部署LNMP,需要提前配置好yum源,否则该脚本会失败
yum -y install httpd
yum -y install mariadb mariadb-devel mariadb-server
yum -y install php php-mysql

systemctl start httpd mariadb
systemctl enable httpd mariadb

