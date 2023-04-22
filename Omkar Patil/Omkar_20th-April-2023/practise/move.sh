cwd=$1
if [ -d $cwd ]
then 
echo "Enter new name"
read name
mv $cwd ./$name
else
echo "Enter directory"
fi