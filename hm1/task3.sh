#!/bin/bash
if [ "$#" -ne 2 ];then 
echo "erorr enter <word> <file>"
exit 1
fi
word=$1
file=$2

if [ ! -f "$file" ];then
echo "erorr file not found"
exit 1
fi

count=$(grep -o -w "$word" "$file" | wc -l)
echo "The word '$word' occurs $count times in the file '$file'."