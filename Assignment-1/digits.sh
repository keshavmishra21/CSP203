#!/bin/bash

count=0

for num in {2000..7500}; do
    if [[ $num == *4* ]]; then
        echo $num
        ((count++))
    fi
done

echo "Total count: $count"
