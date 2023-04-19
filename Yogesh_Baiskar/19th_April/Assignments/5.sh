#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Please enter at least one integer argument"
  exit 1
fi

largest=$1

for arg in "$@"; do
  if [[ $arg -gt $largest ]]; then
    largest=$arg
  fi
done

echo "The largest value is $largest"
