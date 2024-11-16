#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <string1> <string2> <directory>"
    exit 1
fi

string1="$1"
string2="$2"
directory="$3"

if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a valid directory."
    exit 1
fi

for file in "$directory"/*.txt; do
    
    if [ -e "$file" ]; then
        
        awk -v s1="$string1" -v s2="$string2" '
        NR <= 10 {gsub(s1, s2)} {print}
        ' "$file" > "${file}.tmp"

        
        mv "${file}.tmp" "$file"

        echo "Updated $file"
    fi
done

