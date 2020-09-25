#!/bin/bash
ps a x | grep -E "[[:space:]]+/sbin/+" | awk '{print $1}' > n2.txt

