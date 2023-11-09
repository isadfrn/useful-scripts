#!/bin/bash

input_dir="./"
output_dir="./output"

mkdir -p "$output_dir"

for file in "$input_dir"/*.mkv; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        filename_no_ext="${filename%.*}"
        output_file="$output_dir/$filename_no_ext.mp4"

        ffmpeg -i "$file" -c:v libx264 -crf 23 -c:a aac -strict experimental "$output_file"

        echo "Converted: $filename -> $filename_no_ext.mp4"
    fi
done

echo "-------------------------------------"
echo "Conversion complete!"
