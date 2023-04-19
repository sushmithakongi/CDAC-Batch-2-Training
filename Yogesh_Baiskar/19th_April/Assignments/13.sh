#!/bin/bash

# Display menu
echo "Select an option:"
echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name and version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running processes"

# Read user choice
read choice

case $choice in
	1)
		w | cut -d ' ' -f 1 | grep -v USER | sort -u
		;;
	2)
		echo $SHELL
		;;
	3)
		echo "Your home directory is $HOME"
		;;
	4)
		uname -a
		;;
	5)
		echo "Current working directory is `pwd`"
		;;
	6)
		echo "Number of users logged in: `who | wc -l`"
		;;
	7)
		cat /etc/shells
		;;
	8)
		df -h
		;;
	9)
		lscpu
		;;
	10)
		free -h
		;;
	11)
		df -T
		;;
	12)
		ps auxf
		;;
	*)
		echo "Invalid option"
		;;
esac

