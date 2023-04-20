#!/bin/bash
echo "Enter the numbers to addiƟon:"
# Read two real numbers from the user
read num1 num2
# Add the two numbers using bc
sum=$(echo "$num1 + $num2" | bc)
# Print the result
echo "The sum of $num1 and $num2 is $sum" 
