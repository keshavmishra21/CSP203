#!/bin/bash

data_file="data.dat"

products=("facecream" "facewash" "toothpaste" "bathingsoap" "shampoo" "moisturizer")
highest_sales=0
top_product=""

for i in {2..7}; do
total_sales=$(awk -F"," -v col="$i" '{sum += $col} END {print sum}' "$data_file")
if (( total_sales > highest_sales )); then
    highest_sales=$total_sales
    top_product=${products[i-2]}
fi
done

echo "The product with the highest annual sales is: $top_product with $highest_sales units."