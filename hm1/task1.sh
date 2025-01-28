#!/bin/bash
read -p "enter the number" num
newnum=0
for((i=1;i<=num;i++))
do 
newnum=$((newnum+i))
done 
echo "the sum is"$newnum
