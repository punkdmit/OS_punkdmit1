#!/bin/bash
function app_confused(){
echo "error app confused, can't find file";
echo "5"
exit 5;
}
[ -f "./tasks/error.sh" ] || app_confused;


connect=0;
source ./tasks/error.sh
case "$1" in
calc)
[ -f "./tasks/calc.sh" ] || app_confused;
[[ $# -ne 4 ]] && err "4 arg expected" 3;
sh ./tasks/calc.sh $2 $3 $4 
;;
search)
source ./tasks/search.sh || app_confused;
#[[ $# -ne 3 ]] && err "3 arg expected" 3;
search $2 $3;
;;
reverse)
[ -f "./tasks/reverse.sh" ] || app_confused;
[[ $# -ne 3 ]] && err "need 3 args";
sh ./tasks/reverse.sh $2 $3; 
;;
strlen)
[ -f "./tasks/strlen.sh" ] || app_confused;
[[ $# == 1 ]] && err "Write string" 3;
shift
sh ./tasks/strlen.sh "$@";
;;
log)
source ./tasks/log.sh  || app_confused;
[[ $# -ne 1 ]] && err "1 expected" 3; 
log
;;
exit)
source ./tasks/exit.sh || app_confused;
[[ $# -ne 1 ]] && [[ $# -ne 2 ]] && err "1 expected" 3;
exit_ $2;
;;
help)
source ./tasks/help.sh || app_confused;
[[ $# -ne 1 ]] && err "1 expected" 3;
help 
;;
interactive)
app_confused 
connect=1;
interactive
;;
*) 
err "Write right case key" 69; # kod dlya nevernogo argumenta

esac


