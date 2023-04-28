#!/bin/bash

if [ $# -ne 3 ]; then
 echo "Usage: $0 num1 operator num2"
 exit 1
fi


num1=$1
operator=$2
num2=$3

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
