#!/bin/bash
# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
 echo "Usage: $0 num1 operator num2"
 exit 1
fi
# Store the arguments in variables
num1=$1
operator=$2
num2=$3
# Perform the arithmeƟc calculaƟon based on the operator
case $operator in
 +)
 result=$(echo "$num1 + $num2" | bc)
 ;;
 -)
 result=$(echo "$num1 - $num2" | bc)
 ;;
 \*)
 result=$(echo "$num1 * $num2" | bc)
 ;;
 /)
 result=$(echo "$num1 / $num2" | bc)
 ;;
 *)
 echo "Invalid operator"
 exit 1
esac
# Print the result
echo "The $operator of $num1 and $num2 is $result"
