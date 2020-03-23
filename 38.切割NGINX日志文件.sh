#!/bin/bash
# mkdir /data/scripts
#vim /data/scripts/nginx_log.sh
logs_path="/usr/local/nginx/logs/"
mv ${log_path}access.log ${logs_path}access_$(date -d "yesterday"+"%Y%m%d").log
kill -USR1 `cat /usr/local/nginx/logs/nginx.ipd`

#chmod +x /data/scripts/nginx_log.sh
#crontab -e
# 0 1 * * * /data/scripts/nginx_log.sh
