#!/bin/bash
source ./tasks/error.sh
Menu() {
echo -e "MENU:\nc - calc\ns - search\nr - reverse\nst - strlen\nl - log\ne - exit\nh - help"
echo "INPUT KEY:"
read key
case "$key" in
calc | c)
 ./interact/calc.sh
;;
search | s)
./interact/search.sh
;;
strlen | st)
./interact/strlen.sh
;;
log | l)
./interact/log.sh
;;
exit | e)
./interact/exit.sh
;;
reverse | r)
./interact/reverse.sh
;;
help | h)
./interact/help.sh
;;
*)
clear
printError "Wrong key"
Menu
;;
esac
}
Menu
