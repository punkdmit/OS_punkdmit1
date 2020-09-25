#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
echo "Insert Input Filename:"
read inputName;
echo "Insert Output filename:"
read outputName;
if (( ${#inputName} == 0 ))
then
clear
printError 'Missing input file'
~/inter/interactive/interactive.sh
elif (( ${#outputName} == 0 ))
then
clear
printError 'Missing output file'
~/inter/interactive/interactive.sh
fi
file_exist "$inputName" && clear && printError "first file doesn't exist"  && ~/inter/interactive/interactive.sh
! isReadable "$inputName" && clear && printError "first file isn't readable" && ~/inter/interactive/interactive.sh
#isFileExists "$2" && ! isWritable "$2" && clear &&
#printError "File $2 isn't writable" && ~/inter/interactive/interactive.sh
[[ "$inputName" = "$outputName" ]] && tac "$inputName" | rev > TMP && mv TMP "$outputName" || tac "$inputName" | rev > "$outputName"
# tac "$inputName" > "$outputName"
clear
echo 'Successfully reversed'
~/inter/interactive/interactive.sh
