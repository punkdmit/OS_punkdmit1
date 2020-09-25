#!/bin/bash
process=$(ps --no-headers a -U user)
echo "$process" | wc -l
echo "$process" | awk '{print $1 ":" $5}'
