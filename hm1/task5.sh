#!/bin/bash
read -p "enter the number" num
newnum=1
for((i=num;i>1;i--))
do 
newnum=$((newnum*i))
done 
echo "the fac is"$newnum
