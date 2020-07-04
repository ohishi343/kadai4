#!/bin/bash

if [ $# -ne 2 ]; then
	echo "input 2 arguments"
	exit 1
fi
expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
	echo "input natural number"
	exit 1
fi

while [ 0 -lt $1 ]
do
 	t=$(expr $2 % $1)
 	set $t $1
done
echo $2
