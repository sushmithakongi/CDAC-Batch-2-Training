echo adding the floating point numbers

echo enter a and b
read a b
c=`echo $a+$b | bc`
echo $c