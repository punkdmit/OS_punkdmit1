#!/bin/bash
source ./tasks/ficha.sh
source ./tasks/error.sh
file1=$1
file2=$2
file_exist "$file1" && err1 "Can't find first file" 6;

tac "$file1" > "$file2"
if [[ -s "$file2" ]]
then
echo "success"
else
echo "failed"
exit 1
fi

