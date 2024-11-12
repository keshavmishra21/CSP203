#!/bin/bash

data_file="data.dat"

awk -F, '
NR>1 {
    facecream+=$2; facewash+=$3; toothpaste+=$4;
    bathingsoap+=$5; shampoo+=$6; moisturizer+=$7;
}
END {
    print "facecream", facecream;
    print "facewash", facewash;
    print "toothpaste", toothpaste;
    print "bathingsoap", bathingsoap;
    print "shampoo", shampoo;
    print "moisturizer", moisturizer;
}' "$data_file" |
sort -k2,2nr | head -n 3 > top_3_products.dat

echo "Top 3 products by sales:"
cat top_3_products.dat