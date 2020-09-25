#!/bin/bash
ps --no-headers -eo pid,comm,stime | sort -k 3 | tail -n 1 | awk '{print $1 " " $3}'
