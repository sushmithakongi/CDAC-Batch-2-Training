echo "before deleting the content of  file is "
cat $1
sed -i '/^\s*$/d' "$1"
echo "All empty lines of the file $1 will be deleted"
echo "After deleting the content of  file is "
cat $1