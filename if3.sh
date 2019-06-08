#!/bin/bash
#Author:bala
#Date:06/06/2019
#Description:this is for multiple conditon check
#Modified:06/07/2019

if [ -z $1 ]
then 
 echo "you havn't entred any argments ,retry"

else
 if [ -d $1 ]
   then
  echo "file exists and its direcroty"
 elif [ -e $1 ]
  then 
    echo "file exists its a normal file"
else
echo "pls enter valid input"
fi 
fi
