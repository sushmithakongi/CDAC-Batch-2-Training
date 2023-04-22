#!/bin/bash
echo "enter value for rows"
read row
echo "enter value for coloumn"
read col

for((i=0 ; i<$row ; i++))
do
for((j=0 ; j<$col ; j++))
do
if (( ($row+$col)%2 == 0 ))
then
echo -n "1"
else
echo -n "0"
fi
done
echo ""
done