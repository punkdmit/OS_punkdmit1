#!/bin/bash

function reverse(){
echo 'Write output file name and input file with enter'
read file1
read file2
tac $file1 > $file2
if [ -s $test13 ]
then
echo "success"
else
echo "failed, sorry"
fi
}
reverse
