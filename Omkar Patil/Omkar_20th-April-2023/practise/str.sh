#!bin/bash
if [ $# -eq 0 ];
then
echo "Please enter the string "
exit 1
fi

num=${1%[-+*/]}
ope=${1:${#num}:1}

if [[ !ope =~[-+*/] ]];
then
echo "invalid operator"
exit 1
fi

result=0
for ((i=0;i<${#num};i++));
do
temp=${num:$i:1}
case $ope in 
+)result=$((result+temp));;
-)result=$((result-temp));;
*)result=$((result*temp));;
/)result=$((result/temp));;
esac
done
 echo $result




















