#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
echo "Insert Input file path:"
read inputName;
echo "Insert Output filename:"
read outputName;
if (( ${#inputName} == 0 ))
then
clear
printError 'Missing input file'
~/interact/interactive.sh
elif (( ${#outputName} == 0 ))
then
clear
printError 'Missing output file'
~/interact/interactive.sh
fi
file_exist "$inputName" && clear && printError "first file doesn't exist"  && ~/interact/interactive.sh
! isReadable "$inputName" && clear && printError "first file isn't readable" && ~/interact/interactive.sh
#isFileExists "$2" && ! isWritable "$2" && clear &&
#printError "File $2 isn't writable" && ~/inter/interactive/interactive.sh
[[ "$inputName" = "$outputName" ]] && tac "$inputName" | rev > TMP && mv TMP "$outputName" || tac "$inputName" | rev > "$outputName"
# tac "$inputName" > "$outputName"
clear
echo 'Successfully reversed'
~/interact/interactive.sh
