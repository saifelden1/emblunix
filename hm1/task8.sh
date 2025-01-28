#!/bin/bash

read -p "Enter the directory :" directory

if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' not found!"
  exit 1
fi

find "$directory" -type f -empty
