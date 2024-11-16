#!/bin/bash

files=("CSP100.txt" "CSP101.txt" "CSP102.txt")

max_e_count=0
course_with_max_e=""

temp_e_file=$(mktemp)

for file in "${files[@]}"; do
    
    e_count=$(awk -F, '$2 == "E" {count++} END {print count}' "$file")
    
    
    awk -F, '$2 == "E" {print $1}' "$file" >> "$temp_e_file"
    
    if [ "$e_count" -gt "$max_e_count" ]; then
        max_e_count="$e_count"
        course_with_max_e="$file"
    fi
done

echo "Roll numbers of students who have obtained an E grade in any course:"
sort -u "$temp_e_file"

rm "$temp_e_file"

if [ -n "$course_with_max_e" ]; then
    echo "Replacing E grades with C in $course_with_max_e"
    sed -i 's/,E/,C/g' "$course_with_max_e"
    echo "Replacement complete in $course_with_max_e"
else
    echo "No course files found with E grades."
fi

