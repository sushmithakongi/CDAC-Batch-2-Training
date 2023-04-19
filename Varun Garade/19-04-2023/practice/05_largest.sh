#!/bin/bash
# Check if arguments are provided
if [ $# -eq 0 ]; then
 echo "Usage: $0 arg1 arg2 ... argn"
 exit 1
fi

largest=$1

for arg in "$@"; do
 if [ "$arg" -gt "$largest" ]; then
 largest=$arg
 fi
done
# Print the largest value
echo "The largest value is $largest" 

