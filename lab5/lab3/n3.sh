#!/bin/bash
crontab -l > current 2>/dev/null
echo "*/5 * * * 0 /home/user/lab3/n1.sh" >> current
crontab current
rm current
