#!/bin/bash

# Check if the user has entered the number and operator
if [[ $# -eq 0 ]]; then
  echo "Please enter a number and an operator"
  exit 1
elif [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[\+\-\*\/]$ ]]; then
  echo "Please enter a valid number and operator"
  exit 1
fi

# Extract the number and operator from the command line arguments
number=$1
operator=$2

# Initialize the result variable
result=0

# Loop through the digits of the number and perform the appropriate operation
for (( i=0; i<${#number}; i++ )); do
  digit=${number:$i:1}
  case $operator in
    "+")
      result=$((result + digit))
      ;;
    "-")
      result=$((result - digit))
      ;;
    "*")
      result=$((result * digit))
      ;;
    "/")
      # Check if the digit is zero to avoid division by zero error
      if [[ $digit -eq 0 ]]; then
        echo "Cannot divide by zero"
        exit 1
      fi
      result=$((result / digit))
      ;;
    *)
      echo "Invalid operator"
      exit 1
      ;;
  esac
done

# Print the result
echo "The $operator of the digits of $number is $result"

