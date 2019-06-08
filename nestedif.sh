#!/bin/bash
#Author:bla
#date: 06/06/2019
#description:this is for nested if condition

VALUE=$(ifconfig |grep -v LOOPBACK |grep -ic mtu)
if [ $VALUE -gt 1 ]
then
  if [ $VALUE -eq 1 ]
 then 
 echo "found active network"
 elif [ $VALUE -gt 1 ] 
 then 
  echo "found multiple nw "
fi
fi
