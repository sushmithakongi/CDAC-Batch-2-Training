#!/bin/bash

# Define the size of the chess board
ROWS=8
COLUMNS=8

# Loop through the rows and columns to print the chess board
for ((i=0;i<$ROWS;i++)); do
  for ((j=0;j<$COLUMNS;j++)); do
    # If both row and column are even or both are odd, the square is black (1)
    if [ $((($i+$j)%2)) -eq 0 ]; then
      echo -ne "1 "
    # Otherwise, the square is white (0)
    else
      echo -ne "0 "
    fi
  done
  echo ""
done

