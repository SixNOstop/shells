#!/bin/bash
#往/etc/security/limits.conf 文件的末尾追加两行配置参数,修改最大打开文件数量
cat >> /etc/security/limits.conf <<EOF
* soft nofile 65536
* hard nofile 65536
EOF
