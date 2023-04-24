#!bin/bash
num=$1
rev=""
echo $#

while [ $num -gt 0 ]
do
rem=$(($num%10))
rev="$rev$rem"
num=$(( $num / 10 ))
done
echo number is $rev