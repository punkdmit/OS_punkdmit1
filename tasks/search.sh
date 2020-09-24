#!/bin/bash
source ./tasks/error.sh
source ./tasks/ficha.sh
function search {
reg=$1
dir=$2
#file_exist $dir && err1 "Dir isn't directory" 7;
if [ -z $reg ] || ! file_exist $reg ; then
err1 "Missed pattern" 3;
elif [ -z $dir ] ; then
err1 "Missed directory" 3;
fi

if
dir_exist $dir && file_exist $dir
then
err1 "Directory/file doesn't exist" 7;
fi
if grep -r -q "$reg" "$dir" ; then
grep -r "$reg" "$dir"
else
echo "not found"
exit 0
fi
}
