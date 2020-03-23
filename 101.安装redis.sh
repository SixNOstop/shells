#!/bin/bash
yum -y install gcc
tar -zxf /opt/redis-4.0.8.tar.gz
cd redis-4.0.8/
make && make install
cd /utils
./install_server.sh
