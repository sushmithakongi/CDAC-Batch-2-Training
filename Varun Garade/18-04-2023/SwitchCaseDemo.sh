#!/bin/bash
echo Press any option 
echo 1 = show date 
echo 2 = list files in current directory 
echo 3 = show current path
read num 
		case $num in
	1)date;;
	2)ls -ltr;;
	3)pwd;;	
	*) echo invalid input!!
esac
