#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
echo "Insert Directory name:"
read dirname;
echo "Insert Pattern:"
read whatToFind;
if [[ -z $dirname ]] ; then
clear
printError "Missing directory"
~/inter/interactive/interactive.sh
elif [[ -z $whatToFind ]] ; then
clear
printError "Missing pattern"
~/inter/interactive/interactive.sh
fi
file_exist $dirname && clear && printError "$dirname is not a directory" && ~/inter/interactive/interactive.sh
grep -r $whatToFind $dirname 
#2> /dev/null | cut -d: -f2
~/inter/interactive/interactive.sh
