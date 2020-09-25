#!/bin/bash
function log() {
local YELLOW="\033[1;33m"
local CYAN="\e[36m"
local RESET="\033[0m"

file_exist "/var/log/anaconda/X.log" && err "not found" 5;
cat -e /var/log/anaconda/X.log | grep "(WW)" | sed -E "/(WW)/s//$(printf "$YELLOW Information $RESET")/"; 
cat -e /var/log/anaconda/X.log | grep "(II)" | sed -E "/(II)/s//$(printf "$CYAN Warning $RESET")/";
}

