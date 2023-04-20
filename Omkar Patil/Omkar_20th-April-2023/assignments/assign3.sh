#!bin/bash
echo enter path
read path
fpath=$path
for dir in $fpath
do
cf=$( find $( echo $dir | tr ' ' ' ' ) -type f -perm /111 | wc -l)
echo files in $dir are $cf
done
