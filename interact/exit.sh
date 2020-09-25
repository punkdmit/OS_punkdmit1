#!/bin/bash
echo "Insert Return Code:"
read code;
source ~/tasks/ficha.sh
source ~/tasks/error.sh
if [ -z "$code" ] ; then
echo "Exiting with code: 0"
exit 0
fi
[[ $(isNan $code) = "0" ]] && err "$code is NaN" 3;
echo "Exiting with code:$code"
exit $code
