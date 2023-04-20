#!bin/bash
echo Displying the file system with cmd
dir=$@
# echo The number of argiments are ${ # dir[@] }
# echo The names of the directories are ${dir[@]}
directory=$@
for ele in $directory
do
fs=$( find $ele -type f )
echo The content in directory is $fs
done
