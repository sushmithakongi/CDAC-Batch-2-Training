#!/bin/bash
echo Enter Your name 
read name
echo Hello $name !!
echo Enter Your Age 
read age

if [ $age -ge 18 ]
then
	echo Congrats, You are eligible to vote !!
else 
	echo Sorry, You are not eligible to vote !!

fi
