#!/bin/bash

# Ask the user to enter the filename
read -p "Enter the filename: " filename

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found!"
  exit 1
fi

# Remove duplicates and save the output to a temporary file, then move it back
awk 'seen[$0]++ == 0' "$filename" > temp.txt && mv temp.txt "$filename"

echo "Duplicates removed successfully from '$filename'."
