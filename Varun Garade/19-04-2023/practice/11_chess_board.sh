#!/bin/bash
# Define the dimensions of the chessboard
rows=8
cols=8
# Loop over each row and column of the chessboard
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
 # Check if the row and column are both even or both odd
 if (( ($row+$col) % 2 == 0 )); then
 # If so, print a 1 for a black square
 echo -n "1 "
 else
 # If not, print a 0 for a white square
 echo -n "0 "
 fi
 done
 # Print a newline character at the end of each row
 echo ""
done
