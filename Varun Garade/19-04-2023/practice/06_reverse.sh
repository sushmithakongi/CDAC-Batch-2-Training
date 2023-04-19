#!/bin/bash
# Check if an argument is provided
if [ $# -eq 0 ]; then
 echo "Usage: $0 number"
 exit 1
fi
# Store the argument in a variable
number=$1
# Reverse the number using a loop
reverse=""
while [ "$number" -gt 0 ]; do
 remainder=$(( $number % 10 ))
 reverse="$reverse$remainder"
 number=$(( $number / 10 ))
done
# Print the reversed number
echo "The reversed number of entered number is $reverse" 

