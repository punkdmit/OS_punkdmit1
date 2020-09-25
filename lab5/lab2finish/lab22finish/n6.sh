#!/bin/bash
for var in $(ps --no-headers -ef | awk '{print $2}')
do
res=$(grep "VmRSS" /proc/"$var"/status 2>/dev/null)
if [ -n "$res" ]
then
echo "$var $res"
fi
done | sort -t ':' -r -n -k 2 | head -n 1 | awk '{print "/proc/ " $1}'

top -o %MEM | head -n 8 | tail -n 1 | awk '{print "top " $2}'
