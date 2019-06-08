#!/bin/bash

#read -p "enter command to excute on remote machine:"  COMMAND

echo "excuting $COMMAND on all webnodes"

for IP in $(cat webnodeip.txt)
do 

echo "###############################"
echo "excuting command on $IP"
echo "###############################"
ssh devops@$IP '
echo "ecuting free command"
free -m
echo
echo "average load"
uptime
echo
echo "how many usrs logged in"
w'
done



