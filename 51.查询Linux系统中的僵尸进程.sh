#!/bin/bash
#awk判断ps命令输出的第8列为z是,显示该进程的pid和进程命令
ps aux |awk '{if($8 == "z"){print $2,$11}}'
