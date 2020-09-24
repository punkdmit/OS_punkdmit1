#!/bin/bash
function err1(){
>&2 echo "Error: $1";
echo "$2"
exit $2;
}

function err(){
>&2 echo "Error: $1";
[[ $connect -eq 0 ]] && echo "$2" && exit $2;
}
