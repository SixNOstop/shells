#!/bin/bash
#-t指定ssh密钥算法为RSA算法;-N设置密钥的密码为空;-f指定生成的密钥存放位置
rm -rf ~/.ssh/{know_hosts,id_rsa*}
ssh-keygen -t RSA -N '' -f ~/.ssh/id_rsa
