#!/bin/bash
source /home/user/tasks/calc.sh
source /home/user/tasks/search.sh
source /home/user/tasks/reverse.sh
source /home/user/tasks/strlen.sh
source /home/user/tasks/log.sh
source /home/user/tasks/exit.sh
source /home/user/tasks/help.sh

function menu(){
[ -f "home/user/tasks/calc.sh" ] && echo "* c\calc"; 
[ -f "home/user/tasks/search.sh" ] && echo "* s\search";
[ -f "home/user/tasks/reverse.sh" ] && echo "* r\reverse";
[ -f "home/user/tasks/strlen.sh" ] && echo "* st\strlen";
[ -f "home/user/tasks/log.sh" ] && echo "* l\log";
[ -f "home/user/tasks/exit.sh" ] && echo "* e\exit";
[ -f "home/user/tasks/help.sh" ] && echo "* h\help";

printf "Input: "

read action;
menu_case $action;
}

function menu_case() {
case "$1" in
calc | c)
[ -f "home/user/tasks/calc.sh" ] && source home/user/tasks/calc.sh && calc_;
;;
search | s)
[ -f "home/user/tasks/search.sh" ] && source home/user/tasks/search.sh && search_;
;;
reverse | r)
[ -f "home/user/tasks/reverse.sh" ] && source home/user/tasks/reverse.sh && reverse_;
;;
strlen | st)
[ -f "home/user/tasks/strlen.sh" ] && source home/user/tasks/strlen.sh && strlen_;
;;
log | l)
[ -f "home/user/tasks/log.sh" ] && source home/user/tasks/log.sh && log_;
;;
help | h)
[ -f "home/user/tasks/help.sh" ] && source home/user/help.sh && help_;
;;
exit | e)
[ -f "home/user/tasks/exit.sh" ] && source home/user/tasks/exit.sh" && exit_;
;;
*)
err "mistake, write correct arg" 1;
;;
esac
menu;
}

function interactive() {
menu
}

