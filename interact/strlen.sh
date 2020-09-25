#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
echo "Insert string:"
read string
str=${#string}
[[ -z "$string" ]] && printError "Missing string" 1 && ~/interact/interactive.sh
echo ${#string}
~/interact/interactive.sh
