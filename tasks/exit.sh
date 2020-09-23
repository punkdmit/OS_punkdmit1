#!/bin/bash
function exit_() {
num=$1

re='^[0-9]+$'

if [ -z $1 ]
then
echo "0"
exit 0
fi

if ! [[ $1 =~ $re ]]; then
echo "error not a number" >&2; exit 0
fi

if ! [ -z $1 ] 
then
echo $1
exit $1
fi
}

