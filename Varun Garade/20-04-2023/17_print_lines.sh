#!/bin/bash

# check if the file name is provided as an argument
if [ $# -lt 3 ]
  then
    echo "Error: missing arguments"
    echo "Usage: $0 <file> <start line> <number of lines>"
    exit 1
fi

# get the arguments
file="$1"
start="$2"
num="$3"

# use sed to print the desired lines
tail -n +$start "$file" | head -n $num

