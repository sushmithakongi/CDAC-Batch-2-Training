#!/bin/bash
echo "Enter the numbers to addition:"

read num1 num2

sum=$(echo "$num1 + $num2" | bc)

echo "The sum of $num1 and $num2 is $sum"
