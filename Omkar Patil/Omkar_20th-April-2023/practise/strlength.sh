#! bin/bash
 echo "enter the string"
 read str

 string arr=($str)
 echo "The length of the string is : "
 for word in "${string arr[@]}";do
 echo "Length of the string($word)-${#word}"
 done