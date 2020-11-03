#!/bin/bash


echo "Convert Faherenheit to Celsius"
echo -n "Enter temperature (F) : "
read tf 
tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
echo " $tf degree F = $tc degree C"
