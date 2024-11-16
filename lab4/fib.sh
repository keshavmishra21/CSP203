#!/bin/bash

n=$1
a=0
b=1

if [ "$n" -eq 1 ];
then
echo "$a"
elif [ "$n" -eq 2 ];
then
echo "$b"
else
for((i=2; i<n; i++));
do
c=$((a + b))
a=$b
b=$c
done
echo "$c"
fi
