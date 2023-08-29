#!/bin/bash

input_file="./input/list.txt"

while IFS= read -r student_name; do
  student_name=$(echo "$student_name" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  
  filename="${student_name}.md"

  touch "./output/$filename"

  echo "Created file for $student_name: $filename"
done < "$input_file"