#!/bin/bash

arr=(1 2 3 4 5)

sum=0

for element in "${arr[@]}"
do
  sum=$((sum + element))
done

echo "The sum of the array elements is: $sum"
