#!/bin/bash
function app_confused(){
echo "error app confused";
exit 2;
}
[ -f "/home/user/error.sh" ] || app_confused;


connect=0;
source /home/user/error.sh
case "$1" in
calc)
source /home/user/tasks/calc.sh || app_confused;
[[ $# -ne 4 ]] && err "expected";
calc $2 $3 $4;
;;
search)
source /home/user/tasks/search.sh || app_confused;
[[ $# -ne 3 ]] && err "2 expected";
search $2 $3;
;;
reverse)
#source /home/user/tasks/reverse.sh || app_confused;

sh ./tasks/reverse.sh $2 $3;
;;
strlen)
# source /home/user/tasks/strlen.sh || app_confused;
shift
sh ./tasks/strlen.sh "$@";
;;
log)
source /home/user/tasks/log.sh  || app_confused;
log
;;
exit)
source /home/user/tasks/exit.sh || app_confused;
[[ $# -ne 1 ]] && [[ $# -ne 2 ]] && err "1 expected";
exit_ $2;
;;
help)
source /home/user/tasks/help.sh || app_confused;
help
;;
interactive)
echo "Sorry its don't work" &>2;
app_confused
exit 2;
connect=1;
interactive
;;
*) 
err "mistake write command" 1

esac


