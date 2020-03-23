#!/bin/bash 
#/var/www/html 为测试目录,脚本会清空该目录下所有 0 字节的文件 
read -p "输入要删除的目录:" dir
find $dir  ‐type f  ‐size  0  ‐exec  rm   ‐rf {} \; 
