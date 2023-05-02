#!/bin/bash
    echo 1. Currently logged users 
	echo 2. Your shell directory 
	echo 3. Home directory 
	echo 4. OS name & version 
	echo 5. Current working directory 
	echo 6. Number of users logged in 
	echo 7. Show all available shells in your system 
	echo 8. Hard disk information 
	echo 9. CPU information. 
	echo 10.Memory information. 
	echo 11.File system information. 
	echo 12.Currently running process.
	
    read option
case $option in
   1) echo  $who
   ;;
   2) echo $SHELL 
   ;;
   3) echo $HOME 
   ;;
   4) echo  $uname-a
   ;;
   5) echo $pwd
   ;;
   6) echo $ (who | wc -l)
   ;;
   7) echo  $(cat /etc/shells)
   ;;
   8) echo $(df -h)
   ;;
   9) echo  "$(cat /proc/cpuinfo)"
   ;;
   10) echo  $(cat /proc/meminfo)
   ;;
   11) echo $(df -T)
   ;;
   12) echo $(ps aux) 
   ;;
esac
