#!/bin/bash
for var in $(ps --no-headers -ef | awk '{print $2}') 
do
ppid=$(cat /proc/"$var"/status 2>/dev/null | awk '{if ($1 == "PPid:") print $2}')
avtime=$(cat /proc/"$var"/sched 2>/dev/null | awk '{if ($1 == "se.sum_exec_runtime") x=$3; if ($1 == "nr_switches") y=$3; if (-n x && -n y && y!=0) {print x/y; y=0}}')
if [[ -n "$ppid" && -n "$avtime" ]]
then echo "$var $ppid $avtime"
fi
done | sort -n -k 2 | awk '{print "ProcessID="$1" : ParentProcessID="$2" : Average_Running_Time="$3""}' > n4.txt
