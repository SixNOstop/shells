#!/bin/bash
for i in "ls *.$1"
do
	mv $i ${i%.*}.$2 #去除$i的.* 详见${}语法
done
