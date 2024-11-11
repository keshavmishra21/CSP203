#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 dir.txt"
    exit 1
fi

while IFS=":" read -r name department type; do
    type=$(echo "$type" | tr -d '\r\n')
    department=$(echo "$department" | tr -d '\r\n')
    name=$(echo "$name" | tr -d '\r\n')

    mkdir -p "$type/$department/$name"
done < "$1"
