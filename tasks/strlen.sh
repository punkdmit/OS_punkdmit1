#!/bin/bash
function strlen() {
echo "Input str" 
read string
echo ${#string}
if [[ $string != 0 ]]
then
echo "succes"
else
echo "pls write string"
fi
exit 0
}
strlen

