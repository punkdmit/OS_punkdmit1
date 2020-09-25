#!/bin/bash
function isNan() {
[[ "$1" =~ ^[-+]?([1-9][0-9]*|0)$ ]] && echo 1 || echo 0;
}
function sum() {
let "res = $1 + $2"
echo $res
}
function sub() {
let "res = $1 - $2"
echo $res
}
function mul() {
let "res = $1 * $2"
echo $res
}
function div(){
if
[[ "$2" -eq "0" ]] 
then
printError "Error:can't use zero";
else
let "res = $1 / $2"
echo $res
fi
}

function isExists() {
[[ -d "$1" ]] && return 0 || return 1;
}
function isFileExists() {
[[ -f "$1" ]] && return 0 || return -1;
}
function isReadable() {
[[ -r "$1" ]] && return 0 || return -1;
}
function isWritable() {
[[ -w "$1" ]] && return 0 || return -1;
}
function int(){
[[ "$1" =~ (^-?([1-9][0-9]*)$) ]] && return 1 || return 0;
}
function file_exist() {
[ -f "$1" ] && [ -r "$1" ] && return 1 || return 0;
}
function dir_exist() {
[ -d "$1" ] && return 1 || return 0;
}
