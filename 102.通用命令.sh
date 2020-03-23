#!/bin/bash
for i in 51 52 53 54 56 57; do ssh root@192.168.4.$i "/etc/indt.d/redis_6379 status"; done
