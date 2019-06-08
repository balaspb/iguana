#!/bin/bash
#Author:bala
#date:06/06/2017
#Modified:06/06/2019

echo "##############################"
echo "looping over 12345"
for i in 1 2 3 4 5
do 
echo "welcome value of $i"
echo "################################"
done


echo "###################################"
echo "looping over exp"
for i in {1..5}
do
echo "welcome value is $i"
done

echo "#####################################"
echo "looping over using seq command"
for i in $(seq 1 5)
do 
echo "welcome value is $i times"
done

echo "#####################################"
echo "looping over increment"

for (( c=1; c<=5; c++ ))
do 
echo "welcome value is $c times"
done




