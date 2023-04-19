#!/bin/bash
echo "Enter the value of n:"
read n
echo "The expected paƩern is:"
# Initiialize variables
num=1
row=1
# Loop unƟl all rows are printed
while [ $row -le $n ]
do
 # Print the current row
 for (( i=1; i<=row; i++ ))
 do
 echo -n "$num "
 num=$((num+1))
 done

 # Move to the next row
 echo ""
 row=$((row+1))
done 
