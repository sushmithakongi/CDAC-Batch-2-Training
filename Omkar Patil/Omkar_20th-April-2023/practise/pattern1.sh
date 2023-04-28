n=1
rows=4
for (( i=1; i<=rows; i++ ))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$n "
    n=$((n + 1))
  done
  echo
done
