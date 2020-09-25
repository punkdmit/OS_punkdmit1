#!/bin/bash
source ~/tasks/ficha.sh
source ~/tasks/error.sh
clear
echo -e "CALCULATOR\nActions:\nsum\nsub\nmul\ndiv"
echo "Insert action:"
read action;
if [[ -z "$action" ]] ; then
  clear
  printError "Missing action"
  ~/interact/interactive.sh
fi
#if [ "$action" = "sum" ] || [ "$action" != "div" ] || [ "$action" != "sub" ] || [ "$action" != "mul" ] ; then
#clear
#printError "Choose right action"
#~/interact/interactive.sh
#fi
echo "Insert First Number:"
read arg1;
if [[ -z "$arg1" ]] ; then
  clear
  printError "Missing First Number"
  ~/interact/interactive.sh
fi
[[ $(isNan $arg1) == "0" ]] && clear && printError "$arg1 is NAN" && ~/interact/interactive.sh
echo "Insert Second Number:"
read arg2;
if [[ -z "$arg2" ]] ; then
  clear
  printError "Missing First Number"
  ~/interact/interactive.sh
fi
[[ $(isNan $arg2) == "0" ]] && clear && printError "$arg2 is NAN" && ~/interact/interactive.sh
clear
case "$action" in
sum)
sum $arg1 $arg2
;;
sub)
sub $arg1 $arg2
;;
mul)
mul $arg1 $arg2
;;
div)
div $arg1 $arg2
;;
*)
printError "Wrong action"
;;
esac
~/interact/interactive.sh
