#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder>"
    exit 1
fi

folder="$1"

if [ ! -d "$folder" ]; then
    echo "Error: '$folder' is not a valid directory."
    exit 1
fi

find "$folder" -type f -size 0 -exec rm -f {} \;

echo "Deleted all 0-byte files in '$folder'."

