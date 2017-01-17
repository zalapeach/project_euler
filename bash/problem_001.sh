#!/bin/bash


echo "Sum of Multiples of 3 and 5"
printf "Limit: "
read limit
multiples=$(($limit/3))
sum=0
for ((i=1; i<=$multiples; i++)) do
  result=$((i * 3))
  sum=$((sum + result))
done
echo $sum
echo $multiples
echo $limit
