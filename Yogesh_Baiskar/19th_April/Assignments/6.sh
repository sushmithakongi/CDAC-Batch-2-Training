#!/bin/bash

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Please enter a valid number"
  exit 1
fi


reverse=""
for (( i=${#1}-1; i>=0; i-- )); do
  reverse="$reverse${1:$i:1}"
done

echo "The reversed number of entered number is $reverse"

