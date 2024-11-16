#!/bin/bash


if [ $# -ne 1 ]; then
  echo "Usage: $0 <search_string>"
  exit 1
fi

search_string="$1"
total_occurences=0

for file in *.csv; do
if [ ! -e "$file" ]; then
echo "No .csv files found in the current directory."
exit 1
fi

count=$(grep -o "$search_string" "$file" | wc -l)
total_occurences=$((total_occurences + count))
done
echo "Total occurences of '$search_string': $total_occurences"
