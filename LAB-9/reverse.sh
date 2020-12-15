# !/bin/bash
a=$#
x=$*
c=$a
arg=''
while [ 1 -le $c ]
do
c=`expr $c - 1`
shift $c
arg=$arg' '$1
set $x
done
echo "Arguments in reverse order $arg"