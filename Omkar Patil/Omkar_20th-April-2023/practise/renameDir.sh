cwd=$1
if  [ -d $cwd ]
then
echo "enter new name"
read name
mv $cwd ./$name
else
echo "Enter directory name"
fi