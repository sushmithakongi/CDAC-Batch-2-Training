#!/bin/bash

echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"

read -p "Enter the option: " choice

case $choice in
  1) who;;
  2) echo "Your shell directory is $SHELL";;
  3) echo "Your home directory is $HOME";;
  4) uname -a;;
  5) echo "Your current working directory is $PWD";;
  6) who | wc -l;;
  7) cat /etc/shells;;
  8) df -h;;
  9) lscpu;;
  10) free -m;;
  11) df -T;;
  12) ps -ef;;
  *) echo "Invalid option";;
esac

