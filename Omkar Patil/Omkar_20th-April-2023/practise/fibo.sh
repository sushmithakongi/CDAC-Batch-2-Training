#! bin/bash
echo "enter the number"
read n
n1=0
n2=1
echo -n $n1 
while [ $n2 -lt $n ]
do
echo -n ",$n2"
temp=$((n1+n2))
n1=$n2
n2=$temp
done

echo ""