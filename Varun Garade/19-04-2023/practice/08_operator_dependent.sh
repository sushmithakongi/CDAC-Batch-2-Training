#!/bin/bash
# Check if a string is provided
if [ $# -eq 0 ]; then
 echo "Usage: $0 string"
 exit 1
fi

# Get the number and the operator from the string
number=${1%[-+*/]}
operator=${1:${#number}:1}
# Check if the operator is valid
if [[ ! $operator =~ [-+*/] ]]; then
 echo "Error: Invalid operator."
 exit 1
fi

result=0
for ((i=0; i<${#number}; i++)); do
 digit=${number:$i:1}
 case $operator in
 +) result=$((result + digit)) ;;
 -) result=$((result - digit)) ;;
 \*) result=$((result * digit)) ;;
 /) result=$((result / digit)) ;;
 esac
done

echo "The $operator of the digits in $number is $result" 

