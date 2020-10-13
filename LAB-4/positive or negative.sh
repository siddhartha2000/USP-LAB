echo "Enter a Number"
read num

if [ $num -lt 0 ]
then
    echo "Negative"
elif [ $num -gt 0 ]
then
    echo "Positive"
elif [ $num -eq 0 ]	
then
    echo "Zero"
else 
    echo "Enter a valid input"
fi