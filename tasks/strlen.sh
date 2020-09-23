#!/bin/bash
string="$@"
if [[ $# == 0 ]]
then
echo "error"
exit 0
fi
echo "${#string}"
exit 0


