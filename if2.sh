#!/bin/bash
#Author:Bala
#Date:06/06/2019
#Description:this script for multiple conditions
#Modified:06/06/2019

VAR=$(ifconfig | grep -v LOOPBACK | grep -ic mtu)
if [ $VAR -eq 1 ]
  then 
  echo "1 active interface found"

elif [ $VAR -gt 1 ]
 then 
  echo "multiple interface found"
else 
echo "no active interface found"
fi
