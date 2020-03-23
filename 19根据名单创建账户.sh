#!/bin/bash
for i in `cat $1`
do
	useradd $i
	echo "123456" | passwd --stdin $i
done
