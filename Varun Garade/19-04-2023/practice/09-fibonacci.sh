#!/bin/bash
# Read the limit from the user
read -p "Enter limit for Fibonacci series: " n
# IniƟalize the first two Fibonacci numbers
a=0
b=1
# Print the first Fibonacci number
echo -n "$a"
# Print the rest of the Fibonacci series up to n
while [ $b -le $n ]; do
 echo -n ", $b"
 c=$((a + b))
 a=$b
 b=$c
done
echo "" 

