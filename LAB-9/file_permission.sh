# !/bin/bash
if [ $# -ne 2 ]
then
echo "pass 2 argument"
exit
fi
file1=$1
file2=$2
per1=`ls -l $file1 | cut -c 2-10`
per2=`ls -l $file2 | cut -c 2-10`
if [ $per1 = $per2 ]
then
echo "permissions are same"
echo $per1
else
echo "permissions are different"
echo "permission of file $file1 is $per1"
echo "permission of file $file2 is $per2"
fi



