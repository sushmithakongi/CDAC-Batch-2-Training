#!/bin/bash


if [ $# -lt 3 ]
  then
    echo "Error: missing arguments"
    echo "Usage: $0 <file> <start line> <number of lines>"
    exit 1
fi


file="$1"
start="$2"
num="$3"


tail -n +$start "$file" | head -n $num

