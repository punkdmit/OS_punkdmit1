#!/bin/bash
function search {
reg=$1
dir=$2
if grep -q "$reg" "$dir" ; then
grep -s "$reg" "$dir"
else
echo "not found"
fi
}

