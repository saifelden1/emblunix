#!/bin/bash

read -p "Enter the directory name: " directory

if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' not found!"
  exit 1
fi

for file in "$directory"/*; do
  if [ -f "$file" ]; then
    lowercase=$(echo "$file" | tr '[:upper:]' '[:lower:]')
    
    if [ "$file" != "$lowercase" ]; then
      mv "$file" "$lowercase"
      echo "Renamed: $file -> $lowercase"
    fi
  fi
done
