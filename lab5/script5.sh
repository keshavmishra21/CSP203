#!/bin/bash

for file in *.txt; do
    
    if [ -e "$file" ]; then
        
        mv "$file" "${file%.txt}.dat"
        echo "Renamed $file to ${file%.txt}.dat"
    fi
done

