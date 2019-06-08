#!/bin/bash
#Author:Bala
#date:06/06/2019
#Description:this is for if condition
#Modified:06/06/2019
 
read -p "enter the value:" NUM
echo 
echo " you have entered" $NUM
if [ $NUM -gt 100 ]
 then
  echo "you entred if block" 
  echo "you have entered greater than 100 "
sleep 5
else
 echo "you have entered less than 100"
fi
echo "you are in out of if block"
