#!bin/bash
echo Displying the file system with less than 10% freespace

fs=$(df -h | awk '{ if ( $5 <= 10 ) print $1}')
echo  The files system : $fs