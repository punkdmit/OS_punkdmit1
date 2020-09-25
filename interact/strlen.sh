#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
echo "Insert string:"
read string
str=${#string}
[[ -z "$string" ]] && printError "Missing string" 1 && ~/inter/interactive/interactive.sh
echo ${#string}
~/inter/interactive/interactive.sh
