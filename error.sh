#!/bin/bash
function err(){
>&2 echo "Error: $1";
[[ $connect -eq 0 ]] && exit $2;
}
