#!/bin/bash
at -f /home/user/lab3/n1.sh now + 1 minutes 2>/dev/null
tail -n 0 -f ~/report.txt
