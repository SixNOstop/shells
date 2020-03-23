#!/bin/bash
user=$(awk -F: '/bash$/{print $1}' /etc/passwd/)
for i in $user
do
awk -F: -v x=$i '$1==x{print $1,$2}' /etc/shadow
done
