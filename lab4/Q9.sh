#!/bin/bash

keywords=("int" "char" "float" "double" "unsigned" "for" "if" "else" "while" "switch")

for keyword in "${keywords[@]}"; 
do
count=$(grep -wo "$keyword" "$1" | wc -l | tr -d ' ')
echo "$keyword: $count"
done