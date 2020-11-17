#!/bin/bash


file=emp.lst

count1=0
count2=0
count3=0

count1=$(grep -i $1 $file | wc -l)
count2=$(grep -i $2 $file | wc -l)
count3=$(grep -i $3 $file | wc -l)

if [ $count1 -eq 0 ]; then
	echo " $1 not exist! "
else
	grep -i $1 $file

fi


if [ $count2 -eq 0 ]; then
	echo " $2 not exist! "
else
	grep -i $2 $file

fi



if [ $count3 -eq 0 ]; then
	echo "$3 not exist! "
else
	grep -i $3 $file

fi

