#!/bin/bash
source ./tasks/error.sh

string="$@"
if [[ $# == 0 ]]
then
err1 "Missed string" 3;
fi
echo "Long: ${#string}"
exit 0


