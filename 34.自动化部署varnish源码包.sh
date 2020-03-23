#!/bin/bash
#本脚本需要提前下载varnish-3.0.6.tar.gz这样一个源码包软件,该脚本即可用自动源码安装部署软件
yum -y install gcc readline-devel pcre-devel
useradd -s /sbin/nologin varnish
tar -xf varnish-3.0.6.tar.gz
cd varnish-3.0.6

#使用configure,make,make install 源码安装软件
./configure --prefix=/usr/local/varnish
make && make install

#在源码包目录下,将相应的配置文件拷贝到linux系统文件系统中
#默认安装完成后,不会自动拷贝或安装配置文件到linux系统,所以需要手动cp复制配置文件
#并使用uudigen生成一个随机秘钥的配置文件

cp redhat/varnish.initrc /etc/init.d/varnish
cp redhat/varnish.sysconfig /etc/sysconfig/varnish
cp redhat/varnish_reload_vcl /usr/bin
ln -s /usr/local/varnish/sbin/varnishd /usr/sbin/
ln -s /usr/local/varnish/bin/* /usr/bin
mkdir /etc/varnish
cp /usr/local/varnish/etc/varnish/default.vcl /etc/varnish
uuidgen > /etc/varnish/secret

