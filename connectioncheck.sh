#!/bin/bash


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



