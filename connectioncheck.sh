#!/bin/bash
#Author:bala
#Date:07/06/2019
#Modified:08/06/2019

echo "excuting $COMMAND on all webnodes"

for IP in $(cat webnodeip.txt)
do 
ssh devops@$IP hostname 
if [ $? -eq 0 ]
then 
echo "connection established on $IP"
echo "###############################"
else
echo "###############################"
echo "connection not established on $IP"
fi
done



