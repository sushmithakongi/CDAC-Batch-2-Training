#!bin/bash
elearr=$@
temp=0
for ele in $elearr
do
if [ $ele -gt $temp ]
then
temp=$ele
fi
done
echo $temp