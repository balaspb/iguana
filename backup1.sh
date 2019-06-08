#!/bin/bash
#Author:bala
#Date:06/06/2019
#Description:this is for and opreartion
#modified:06/06/2019
 if [[ -e $1 ]] || [[ -d $1 ]]
  then
   echo "you have entered directory or file path and taking backup"
  tar -cvzf backupfiledir.tgz $1

elif [[ -z $1 ]]
 then
   echo "you havn't enter any input"
else 
  echo "you have entered invalid input pls retry"
fi

     
