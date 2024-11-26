#!/bin/bash

for file in .
do
if echo "$file" | grep -q "abc"
then
mv "$file" "def${abc%file}"
fi
done
