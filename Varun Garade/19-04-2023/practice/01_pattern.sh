#!/bin/bash
echo "Enter the value of n:"
read n
echo "The expected paƩern is:"
for (( i=1; i<=n; i++ ))
do
 for (( j=1; j<=i; j++ ))
 do
 echo -n "$j "
 done
 echo ""
done 
