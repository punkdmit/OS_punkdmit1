#!/bin/bash

file1=$1
file2=$2
tac "$file1" > "$file2"
if [[ -s "$file2" ]]
then
echo "success"
else
echo "failed, sorry"
exit 1
fi

