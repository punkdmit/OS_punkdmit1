#!/bin/bash
function calc() {
calcc=$1
num1=$2
num2=$3
case $calcc in
sum)
echo $(($num1+$num2))
exit 1
;;
sub)
echo $(($num1-$num2))
exit 0
;;
mul)
echo $(($num1*$num2))
exit 0
;;
div)
echo $(($num1/$num2))
exit 0
;;
*)
echo 'mistake, u should write correct num or key'
exit 0
;;
esac
}


