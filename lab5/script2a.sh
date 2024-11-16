#!/bin/bash

grep ",A$" CSP102.txt | awk -F, '{print $1}' > roll_A.txt
grep ",B$" CSP101.txt | awk -F, '{print $1}' > roll_B.txt

comm -12 <(sort roll_A.txt) <(sort roll_B.txt)
rm roll_A.txt roll_B.txt
