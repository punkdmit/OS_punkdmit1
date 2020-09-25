#!/bin/bash
IFS=$'\n'
echo "" > n5.txt
n=1
avtime=0
ppid=$(cat n4.txt | head -n 1 | awk '{print $3}')

for var in $(cat n4.txt)
do
curppid=$(echo "$var" | awk '{print $3}')
curtime=$(echo "$var" | awk -F= '{print $4}')

if [[ "$curppid" == "$ppid" ]];
then
n=$(($n+1))
avtime=$(echo "scale=5; $avtime+$curtime" | bc)

else
print1=$(echo "$ppid" | awk -F= '{print $2}')
print2=$(echo "scale=5; $avtime/$n" | bc)
echo "Average_Sleeping_Children_of_ParentID=$print1 is $print2" >> n5.txt

ppid=$curppid
n=1
avtime=$curtime

fi
echo "$var" >> n5.txt
done

print1=$(echo "$ppid" | awk -F= '{print $2}')
print2=$(echo "scale=5;$avtime/$n" | bc)
echo "Average_Sleeping_Children_of_ParentID=$print1 is $print2" >> n5.txt
