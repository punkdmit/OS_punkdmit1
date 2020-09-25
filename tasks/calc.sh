#!/bin/bash
source ./tasks/error.sh
calcc="$1"
num1="$2"
num2="$3"

if [ -z $num1 ] && [ -z $num2 ]; then
err1 "Write two args" 3
elif [ -z $num1 ] ; then
err1 "Write second arg" 3
elif [ -z $num2 ] ; then
err1 "Write third arg" 3
fi

case $calcc in
sum)
let "result = $num1 + $num2"
echo $result
exit 0
;;
sub)
let "result = $num1 - $num2"
echo $result
exit 0
;;
mul)
let "result = $num1 * $num2"
echo $result
exit 0
;;
div)
if 
[[ $num1 == 0 ]] || [[ $num1 == -0 ]] || [[ $num1 == +0 ]]
then
err1 "Can't use 0" 3;
elif 
[[ $num2 == 0 ]] || [[ $num2 == +0 ]] || [[ $num2 == -0 ]]
then
err1 "Can't use 0" 3;
fi
let "result = $num1 / $num2"
echo $result
exit 0
;;
*)
err1 "Choose right case" 3;
;;
esac

