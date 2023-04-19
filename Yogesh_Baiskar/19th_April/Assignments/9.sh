#!/bin/bash

# Ask the user for the limit of the Fibonacci series
read -p "Enter limit for Fibonacci series: " limit

# Initialize the first two numbers of the series
num1=0
num2=1

# Print the first two numbers of the series
echo -n "$num1, $num2, "

# Generate the remaining numbers of the series until the limit is reached
while [[ $num2 -le $limit ]]; do
  # Calculate the next number in the series
  next=$((num1 + num2))
  # Check if the next number is less than or equal to the limit
  if [[ $next -le $limit ]]; then
    # Print the next number and update the variables
    echo -n "$next, "
    num1=$num2
    num2=$next
  else
    # Exit the loop if the next number is greater than the limit
    break
  fi
done

# Print a newline character at the end of the series
echo ""

