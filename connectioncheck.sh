#!/bin/bash
#Modified:08/06/2019
#Description:this is for testing
#AUTHOR:Ranga
#this for git reset test
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



