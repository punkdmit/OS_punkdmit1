#!/bin/bash
source ~/tasks/error.sh
Menu() {
echo -e "MENU:\nc - calc\ns - search\nr - reverse\nst - strlen\nl - log\ne - exit\nh - help"
echo "INPUT KEY:"
read key
case "$key" in
calc | c)
 ~/inter/interactive/calc.sh
;;
search | s)
~/inter/interactive/search.sh
;;
strlen | st)
~/inter/interactive/strlen.sh
;;
log | l)
~/inter/interactive/log.sh
;;
exit | e)
~/inter/interactive/exit.sh
;;
reverse | r)
~/inter/interactive/reverse.sh
;;
help | h)
~/inter/interactive/help.sh
;;
*)
clear
printError "Wrong key"
Menu
;;
esac
}
Menu
