if [ $# -eq 0 ];
then echo "No parameter inserted!!!"

else 
	if [ -e $1 ] && [ -e $2 ]; 
     	then
	   	echo "File 1 : $(stat $1) "
		echo "File 2 : $(stat $2) "
	else
		echo "File(s) does not exist"
	fi
fi