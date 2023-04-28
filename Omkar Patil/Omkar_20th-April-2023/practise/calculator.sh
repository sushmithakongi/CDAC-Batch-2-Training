calculator()
{
    awk "BEGIN {print \"The sum of $1 and $2  is: \" $* }";
}
calculator $1+$2