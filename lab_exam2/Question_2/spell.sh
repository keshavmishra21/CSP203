#!/bin/bash

input="$1"
dict="$2"
while IFS=  read -r word
do
if ! grep -q "$word" "$dict"
then
echo "$word"
fi
done < "$input"
