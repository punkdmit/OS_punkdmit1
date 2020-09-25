#!/bin/bash
source ./tasks/ficha.sh
source ./tasks/error.sh
file1=$1
file2=$2
file_exist "$file1" && err1 "Can't find first file" 6;
! isReadable "$file1" && err1 "file1 is not readable" 8;
#!isWritable "$file2" && || err1 "file2 isnt writable" 9;
[[ "$file1" = "$file2" ]] && tac "$file1" | rev > TMP && mv TMP "$file2" || tac "$file1" | rev > "$file2"
# tac "$file1" > "$file2"
if [[ -s "$file2" ]]
then
cat "$file2"
echo "success"
else
echo "failed"
exit 1
fi

