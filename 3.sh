#vim /root/logbak.sh
#编写备份脚本,备份后的文件名包含日期标签,防止后面的备份将前面的备份数据覆盖
#注意date命令需要使用反引号括起来
tat -czf long-`date+%Y%m%d`.tar.gz /var/log
#crontab -e  00 00 * * 5 /3.sh
