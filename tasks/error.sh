#!/bin/bash
printError() {
echo "$*" >> /dev/stderr
}
function errorExit() {
local message="$1"
local code="$2"
[[ -n "$message" ]] && printError "Error:$message.Exiting with code:$code"
exit "${code}"
}
function err1(){
>&2 echo "Error: $1";
echo "$2"
exit $2;
}

function err(){
>&2 echo "Error: $1";
[[ $connect -eq 0 ]] && echo "$2" && exit $2;
}
