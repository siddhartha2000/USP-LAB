#!/bin/bash

da=0
read -p "Enter your salary: " salary
hra=0

if [ $salary -lt 1500 ];then
	hra=$(echo "scale=3;0.90 * $salary" | bc)
	echo " $hra "
	da=$(echo "0.10 * $salary " | bc)

else
	hra=$(echo "scale=3;0.95* $salary" | bc)

	da=$(echo "0.20 * $salary " | bc)

fi

gross_sal=$(echo "$salary +$da + $hra" | bc)

echo "gross salary = $gross_sal"