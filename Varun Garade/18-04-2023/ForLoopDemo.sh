#!/bin/bash
echo Enter the number to find the factorial
read num 
fact=1
for((i=1; i<=$num; i++))
do
	fact=$((fact * i))
done

echo Factorial is $fact
