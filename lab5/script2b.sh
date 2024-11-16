#!/bin/bash

for file in CSP100.txt CSP101.txt CSP102.txt; do
  if [ ! -f "$file" ]; then
    echo "File $file not found!"
    exit 1
  fi
done

count_f_grades() {
  local file="$1"
  grep ',F$' "$file" | wc -l
}

f_count_csp100=$(count_f_grades CSP100.txt)
f_count_csp101=$(count_f_grades CSP101.txt)
f_count_csp102=$(count_f_grades CSP102.txt)

if [ "$f_count_csp100" -ge "$f_count_csp101" ] && [ "$f_count_csp100" -ge "$f_count_csp102" ]; then
  max_f_course="CSP100"
elif [ "$f_count_csp101" -ge "$f_count_csp102" ]; then
  max_f_course="CSP101"
else
  max_f_course="CSP102"
fi

echo "Course with the maximum number of F grades: $max_f_course"

